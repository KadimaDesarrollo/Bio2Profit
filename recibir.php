<?php
session_start();
/*if(!isset($_SESSION["IDUsuario"]) || ($_SESSION["TipoUsuario"]!= "ADMIN")){
session_unset();
session_destroy();
header("location:index.html");
}*/
include ("config.php");
set_time_limit(52);

$allowedExts  = array("txt", "csv");
$allowedTypes = array("text/plain","text/csv");
$extension    = end(explode(".", $_FILES["file"]["name"]));
$ok           = false;
$savepath     = "archivosimp/"; //ruta relativa!!!!!
$link         = mysql_connect($server,$dbuser,$dbpass);


if ($_FILES["file"]["error"] > 0)
{	echo "Error: " . $_FILES["file"]["error"] . "<br>";
}
else
{	If ( in_array($extension, $allowedExts))  //Validando la extension del archivo
	{	if (in_array($_FILES["file"]["type"], $allowedTypes)) //Validando el tipo de archivo
		{	if ( ($_FILES["file"]["size"] < 80000))  //Validando tamaño El limite de tamaño esta en bytes todo: Tamaño maximo en config
			{	$ok = true;
			}		//todo: validar tamaño archivo <3bytes
			else
			{ 	echo "El archivo excede el tamaño maximo";
			}
		}
		else
		{	echo "Tipo invalido, debe ser :";
			foreach ($allowedTypes as $ext)
			{	echo $ext." , ";
			}
		}
	}
	else
	{	echo "Extension invalida, debe ser :";
		foreach ($allowedExts as $ext)
		{	echo $ext." , ";
		}
	}
	echo "<br>";
}
if ($ok == true)  //Paso las validaciones iniciales
{	//Lo paso del temporal del PHP al directorio de trabajo
	move_uploaded_file($_FILES["file"]["tmp_name"], $savepath  . $_FILES["file"]["name"]);
    echo "Guardado en: " . $savepath  . $_FILES["file"]["name"] ."<br>";
	//Se abre Read Only y se volca a un array
	$fp = fopen ( $savepath .$_FILES["file"]["name"] , "r" );
	$i  = 1; //Contador de lineas procesadas	
	$lw = 0; //Array con los warnings generados
	while (( $data = fgetcsv ( $fp , 0 , "," )) !== FALSE ) // Mientras hay líneas que leer...
	{	if ( isset($data[1])) //Hay por lo menos 2 Campos, linea no blanca
		{	if (count($data) <> 7 ) //Linea Incompleta o Excedida
			{	if (count($data)>7 ) //Exceso de datos, se graban solo los 5 primeros
				{	$campos = "";
					$data[0] = preg_replace("/[^0-9a-zA-Z \-.]/", "", $data[0]); //Saneamiento del nombre
					foreach ($data as $camp) //Aglutino el contenido total de la linea para revision
					{	$campos .= $camp.',';
					}
					$query   = "INSERT INTO bio2profit.volcado (N_Linea,Nombre_Empleado, ID_Empleado, Fecha, Entrada, Salida, Estatus, Campos)
								VALUES 	(".$i.",'".$data[0]."','".$data[2]."','".$data[3]."','".$data[5]."','".$data[6]."',2,'".$campos."')"; 
				}
				if (count($data)<7 ) //Faltan Campos,
				{	$campos = "";
					foreach ($data as $camp) //Aglutino el contenido total de la linea para revision
					{	$campos .= $camp.',';
					}
					$query   = "INSERT INTO bio2profit.volcado (N_Linea,Nombre_Empleado, ID_Empleado, Fecha, Entrada, Salida, Estatus, Campos)
								VALUES 	(".$i.",'','','','','',3,'".$campos."')"; 
				}
			}
			else //Ahora saneamiento de cada campo con notificacion..
			{	$campos  = "";  //todo: Compara antes y despues de sanear y si hay diferencia reportar
				$data[0] = preg_replace("/[^0-9a-zA-Z \.,]/", "", $data[0]); //Saneamiento del nombre
				$campos .= $data[0] == "" ? "Nombre Vacio" : "" ;
				$data[2] = preg_replace("/[^0-9]/" , "", $data[2]);			//Saneamiento del ID
				$campos .= $data[2] == "" ? "ID Vacio" : "" ;
				$data[3] = str_replace("/","-",$data[3]);
				$data[3] = preg_replace("/[^0-9\-]/", "", $data[3]); //Saneamiento de Fecha
				$campos .= $data[3] == "" ? "Fecha Vacia" : "" ;
				if ($data[3] <> "")
				{	$fec     = explode("-",$data[3]); //Convertir formato fecha a MySql
					$data[3] = $fec[2]."-".$fec[1]."-".$fec[0];
				}
				$data[5] = preg_replace("/[^0-9:]/", "", $data[5]); //Saneamiento de Entrada
				$data[6] = preg_replace("/[^0-9:]/", "", $data[6]); //Saneamiento de Salida
				
				//todo: Considerar el caso en donde la hora esta en media esfera con am/pm y convertir a esfera completa
				
				$he = (substr($data[5],0,2) + 0) + round((substr($data[5],3,2)/60),2);
				$hs = (substr($data[6],0,2) + 0) + round((substr($data[6],3,2)/60),2);
								
				$tt = $hs - $he;
				
				//todo: tomar en cuenta si se entra un dia y se sale al siguiente
				$estatus = $campos== "" ? 0 : 4 ;
			
				$query   = "INSERT INTO bio2profit.volcado 
									(N_Linea,Nombre_Empleado, ID_Empleado  , Fecha        , Entrada      , Salida       , Estatus    , Campos      , Tiempo_Trabajado)
							VALUES 	(".$i." ,'".$data[0]."' ,'".$data[2]."','".$data[3]."','".$data[5]."','".$data[6]."',".$estatus.",'".$campos."',".$tt.")"; 
			}
		}
		else	//linea en blanco o vacia
		{	$query 	= ' INSERT INTO bio2profit.volcado
								(N_Linea,Nombre_Empleado, ID_Empleado, Fecha, Entrada, Salida, Estatus, Campos)
						VALUES  ('.$i.' ,""             , ""         , ""   ,""      ,""     , 1      , "Linea Vacia")';
		}
		unset($fec);
		$result  = mysql_query($query,$link) or die( "Error en $query: " . mysql_error());
		$i++;
	}
	fclose ( $fp );
}

//			rename("incoming/".$archivo, "incoming\\Historico\\".$archivo);  //Archivados carpeta historica
/*
Estatus  	0 =	Sin novedades
			1 = Linea En Blanco
			2 = Exceso de Datos
			3 = Linea incompleta
			4 = Campo(s) Vacio

*/
isset($_SESSION);
?>
