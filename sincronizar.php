<?php
session_start();
?>
<!DOCTYPE html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="text/javascript" src="jquery/jquery-1.5.2.js"></script>
<title>Carga de Archivo</title>

</head>
<html>
<body>

<form action="recibir.php" method="post" enctype="multipart/form-data">
	<label for="file">Archivo de Asistencias:</label>
	<input type="file" name="file" id="file"><br>
	<input type="submit" name="submit" value="Cargar">
</form>

</body>
</html>
