<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Univalle</title>
    <!-- Bootstrap --> 
	<link href="css/bootstrap.css" rel="stylesheet">
	<link href="css/stilo.css" rel="stylesheet" type="text/css">
    <link href="js/mai.js" rel="stylesheet"> 
</head>
<body>
<!-- INSERTANDO EL SCRIPT DEL PHP-->
<?php
// Declarando variables y asignando valores
$No_Carnet = $_POST['No_Carnet'];
$Nombre_Completo = $_POST['Nombre_Completo'];
$Carrera = $_POST['Carrera'];
$Asignatura = $_POST['Asignatura'];
$Turno = $_POST['Turno'];
$Acumulado = $_POST['Acumulado'];
$Exa_Final = $_POST['Exa_Final'];
$Nota_Final = $_POST['Nota_Final'];
$Anulado = $_POST['Anulado'];

// Conexión con el servidor
$con = mysqli_connect("127.0.0.1", "root", "", "bd_nota");

// Verifica la conexión
if (!$con) {
    die("Error de conexión: " . mysqli_connect_error());
}

// Preparar la consulta usando consultas preparadas
$sql = "INSERT INTO notas (No_Carnet, Nombre_Completo, Carrera, Asignatura, Turno, Acumulado, Exa_Final, Nota_Final, Anulado) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";

// Preparar la sentencia
$stmt = mysqli_prepare($con, $sql);

// Vincular parámetros
mysqli_stmt_bind_param($stmt, "sssssssss", $No_Carnet, $Nombre_Completo, $Carrera, $Asignatura, $Turno, $Acumulado, $Exa_Final, $Nota_Final, $Anulado);

// Ejecutar la consulta
if (mysqli_stmt_execute($stmt)) {
    echo "Registro insertado correctamente.";
} else {
    echo "Error al insertar: " . mysqli_error($con);
}

// Cerrar la sentencia y la conexión
mysqli_stmt_close($stmt);
mysqli_close($con);
?>

<!-- FIN DEL SCRIPT DE PHP-->



      <!--Inicio del Menu de Navegación-->
  <nav class="navbar navbar-default menu-fixed">
	    <div class="container-fluid">
	      <!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
	        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#defaultNavbar1" aria-expanded="false">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
	        <a class="navbar-brand">UNIVALLE</a>
			</div>
	      <!-- Collect the nav links, forms, and other content for toggling -->   
            <div class="collapse navbar-collapse" id="defaultNavbar1">
			  <ul class="nav navbar-nav navbar-right">
	          <li><a href="inicio.php">Inicio</a></li>
	          <li><a href="alumnos.html">Alumnos</a></li>
			  <li><a href="asignaturas.html">Asignaturas</a></li>  
	          <li><a href="asignacion.html">Asignación</a></li> 
			  <li class="active"><a href="notas.html">Notas<span class="sr-only">(current)</span></a></li>    
			  <li><a href="reportes.html">Reportes</a></li>  
			  <li><a href="index.html">Salir</a></li> 
			  </ul>  
          </div>
      </div>
  </nav>

<!--Fin del menu de navegación-->	

<!--INICIO DEL SLIDER DEL BANNER-->	
<div id="carousel1" class="carousel slide" data-ride="carousel" >
  <ol class="carousel-indicators">
    <li data-target="#carousel1" data-slide-to="0" class="active"></li>
    <li data-target="#carousel1" data-slide-to="1"></li>
    <li data-target="#carousel1" data-slide-to="2"></li>
  </ol>
	
  <div class="carousel-inner" role="listbox">
    <div class="item active">
	  <img src="img/banner1.jpg" alt="First slide image" width="100%"  class="center-block">
      <div class="carousel-caption">
        <h3></h3>
        <p></p>
      </div>
    </div>
	  
    <div class="item">
	  <img src="img/banner2.jpg" alt="Second slide image" width="100%"  class="center-block">
      <div class="carousel-caption">
        <h3></h3>
        <p></p>
      </div>
    </div>
	  
    <div class="item">
	  <img src="img/banner3.jpg" alt="Third slide image" width="100%"  class="center-block">
      <div class="carousel-caption">
        <h3></h3>
        <p></p>
      </div>
    </div>
	  
  </div>
	
  <a class="left carousel-control" href="#carousel1" role="button" data-slide="prev"><span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span><span class="sr-only">Previous</span>
  </a><a class="right carousel-control" href="#carousel1" role="button" data-slide="next">
  <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
  <span class="sr-only">Next</span></a>
</div>
<!--FIN DEL SLIDER DEL BANNER-->

<!--CONTENIDO DE LA PAGINA-->
<section class="container">
  <div class="row">
		<div class="col-md-8 col-md-offset-2 text-center">
		<h3>Los datos del Alumno se han registrado</h3>
		<h3>Sastifactoriamente...!</h3>
 	  </div>	
	</div>  
</section>
	  
<section class="container" align="center">
	<div class="row" >
		<div class="col-md-12" col-md-offset-2 align="center">
			<div>
				<img src="img/LOGO-UNIVALLE.jpg" alt="" width="300" height="250">
	  		</div>	
		</div>
		
	</div>  
</section>


<!—FIN DELCONTENIDO DE LA PAGINA-->

<!--INICIO PIE DE PÁGINA-->
<footer>
	
	<!--Seccion 01-->
	<section class="pie01">
	<div class="container">
		
		<div class="row" text align="left"><!--Inicio de la Fila-->
			
			<!--Mapa del Sitio-->
			<div class="col-md-6">
				<h4>Mapa del Sitio</h4>
				<dl>
					<dl>
						<dt><a href="#">Inicio</a></dt>
						<dt><a href="#">Alumnos</a></dt>
						<dt><a href="#">Asignaturas</a></dt>
						<dt><a href="#">Asignación</a></dt>
						<dt><a href="#">Notas</a></dt>
						<dt><a href="#">Reportes</a></dt>
					</dl>
				</dl>
			</div>
			
			<!--Datos de Contactos-->
			<div class="col-md-6">
				<h4>Datos de Contácto</h4>
				<address>
				Dirección: Costado sur de la Rotonda Del Periodista, <br>Managua, Nicaragua.<br> 
				<abbr title="phone">PBX: </abbr>2278-8626.<br> 
				E-mail:<a href="mailto:admision@utc.edu.ni"> admision@univalle.edu.ni</a><br> 
				Horario de atención: 8:00am-5:00pm<br> 
				Facebook ׀ Twitter - UNIVALLENIC
				</address>
			</div>
	
		</div><!--Cierre de la Fila-->
		</div>

	</section>
	
	<!--Seccion 02-->
	<section class="pie02">
		
	  <div class="container">
			&copy; copyright 2025 UNIVALLE - Desarrollado Por: Ing. Ulises Zuniga	
		</div>
		
	</section>
</footer>
<!--FIN PIE DE PÁGINA-->

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) --> 
	<script src="js/jquery-1.11.3.min.js"></script>

	<!-- Include all compiled plugins (below), or include individual files as needed --> 
	<script src="js/bootstrap.js"></script>

</body>
</html>