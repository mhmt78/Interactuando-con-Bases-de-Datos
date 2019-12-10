<?php

  require('./conector.php');
  session_start();


  if (isset($_SESSION['username'])) {
    $con = new ConectorBD();
    if ($con->initConexion()=='OK') {


      $eventos = array();

      $iduser = $_SESSION['id_usuario'];


      $resultado = $con->getEventosUser($iduser);

      while($fila = $resultado->fetch_assoc()){

        $id = $fila['id_evento'];
        $title = $fila['titulo'];
        $start = $fila['fechaInicio']." ".$fila['horaInicio'];
        $allDay = $fila['diaCompleto'];
        $end = $fila['fechaFin']." ".$fila['horaFin'];

        $eventos['eventos'][] = array('id' => $id, 'title' => $title, 'start' => $start, 'end' => $end);

      }

      $eventos['msg'] = 'OK';
      echo json_encode($eventos);

    }else {
      $response['msg']= 'No se pudo conectar a la base de datos';
    }
  }else {
    $response['msg']= 'No se ha iniciado una sesión';
  }

  $con->cerrarConexion();

 ?>
