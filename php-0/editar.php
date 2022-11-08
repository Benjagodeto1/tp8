<?php 
include("function.php");
$id = $_GET['id'];
select_id('datos','id',$id);
?>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Editar usuario - PHP</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="style.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
    <header class="d-flex flex-wrap  py-3 mb-4 border-bottom">
      <ul class="nav nav-pills">
        <li class="nav-item"><a href="index.php" class=" btn boton" aria-current="page">Home</a></li>
      </ul>
    </header>
  </div>
  <div class="container-flex text-center">
<div class="row">
<div class="col-md-12">
<div class="well well-sm">
	<table class="table">
	  <thead class="table-light">
	    <tr>
	      <th scope="col">Marca</th>
	      <th scope="col">Modelo</th>
	      <th scope="col">Año</th>
	      <th scope="col">Foto</th>
	      <th scope="col">Descripcion</th>

	      <th scope="col">Opcion</th>

	    </tr>
	  </thead>
	
		
	  <tbody>
    		<tr>
          			<form action="" method="post">
          				<td scope="row"><input type="text" value="<?php echo $row->marca;?>" name="marca"></td>
          				<td scope="row"><input type="text" value="<?php echo $row->modelo;?>" name="modelo"></td>
          				<td scope="row"><input type="date" value="<?php echo $row->año;?>" name="año"></td>
          				<td scope="row"><input type="text" value="<?php echo $row->foto;?>" name="foto"></td>
          				<td scope="row"><input type="text" value="<?php echo $row->descripcion;?>" name="descripcion"></td>
          				
          				<td scope="row"><input type="submit" name="submit" value="Actualizar" class="btn boton"></td>
          			</form>
			</tr>
	  </table>
			<?php
				if(isset($_POST['submit'])){
					$field = array("marca"=>$_POST['marca'], "modelo"=>$_POST['modelo'], "año"=>$_POST['año'],"foto"=>$_POST['foto'], "descripcion"=>$_POST['descripcion'], "fechapublicacion"=>$_POST['fechapublicacion']);
					$tbl = "datos";
					edit($tbl,$field,'id',$id);
					header("location:index.php");
				}
			?>
		</div>
		</div>
		</div>
		</div>
</body>
</html>