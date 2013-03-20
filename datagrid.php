<html>
<head>
<link rel="stylesheet" type="text/css" href="css/thickbox.css" />
<link rel="stylesheet" type="text/css" href="css/btnflexi.css" />
<link rel="stylesheet" type="text/css" href="css/flexigrid.pack.css" />
<script type="text/javascript" src="jquery/jquery-1.5.2.min.js"></script>
<script type="text/javascript" src="jquery/jquery-ui-1.8.13.custom.min.js"></script>
<script type="text/javascript" src="jquery/thickbox.js"></script>
<script type="text/javascript" src="jquery/flexigrid.pack.js"></script>
<script  type="text/javascript">
$(document).ready(function() {
	$("#grilla").flexigrid({
	    colModel : [
			{display: 'Linea'           	, name : 'N_linea'      	, width :  34, align: 'left'},
			{display: 'Fecha'     			, name : 'Fecha'     		, width :  90, align: 'left'},
			{display: 'ID'					, name : 'ID_Empleado' 	    , width :  50, align: 'left'},
			{display: 'Nombre Empleado' 	, name : 'Nombre_Empleado'  , width : 132, align: 'center'},
			{display: 'Entrada'         	, name : 'Entrada'        	, width :  65, align: 'center'},
			{display: 'Salida'          	, name : 'Salida'         	, width :  65, align: 'center'},
			{display: 'Horas Trabajadas'	, name : 'Tiempo_Trabajado' , width :  65, align: 'center'},
			{display: 'Estatus'           	, name : 'Estatus'         	, width :  15, align: 'center'},
			{display: 'Notas:'             	, name : 'Campos'          	, width : 158, align: 'center'},
			 		],
		usepager : true,
		title    : 'Accesos Diarios',
		useRp    : false,
		rp       : 15,
		showTableToggleBtn: true,
		width    : 880,
		height   : 600 //todo ajustar segun al resolucion de pantalla
	});
}); 
</script>
</head>
<body>
<table id = "grilla" name ="grilla">

<?php 
include ("config.php");
$link    = mysql_connect($server,$dbuser,$dbpass);
$query   = "SELECT * FROM bio2profit.volcado";
$result  = mysql_query($query,$link) or die( "Error en $query: " . mysql_error());	
$numrows = mysql_num_rows($result);
if ($numrows)
{	$c = 0;
	while ($array = mysql_fetch_array($result))
	{	$line    = "r".$c;
			
		$lineapr = "<tr id= '$line'>
						<td>".$array['N_linea']."</td>
						<td>".$array['Fecha']."</td>
						<td>".$array['ID_Empleado']."</td>
						<td>".$array['Nombre_Empleado']."</td>
						<td><span align='right'>".$array['Entrada']."</span></td>
						<td>".$array['Salida']."</td>
						<td>".$array['Tiempo_Trabajado']."</td>
						<td>".$array['Estatus']."</td>
						<td>".$array['Campos']."</td>";
		echo $lineapr."</tr>";
		$c++;						
	}
}
else
{	echo "<h3>No se ha encontrado el producto</h3>";
}
?>
</table>
</body>