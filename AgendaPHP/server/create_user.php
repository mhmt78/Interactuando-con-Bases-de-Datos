<?php

require_once "conexion.php";

$obj=new conectar();
$conexion=$obj->conexion();

$email1 = 'mflores@gmail.com';
$nombre1 = 'Mandy Flores';
$password1 = password_hash('mf1234', PASSWORD_DEFAULT);
$fecha1 = '1998-06-19';

$email2 = 'mhernan157@hotmail.com';
$nombre2 = 'Miguel Mendoza';
$password2 = password_hash('dohimihe18V#', PASSWORD_DEFAULT);
$fecha2 = '1978-12-10';

$email3 = 'mhmendozat@gmail.com';
$nombre3 = 'Mijail Mendoza';
$password3 = password_hash('mend12345', PASSWORD_DEFAULT);
$fecha3 = '2011-09-07';

$sql="INSERT into usuarios (email, nombreCompleto, password, fechaNacimiento)
                    values ('$email1',
                            '$nombre1',
                            '$password1',
                            '$fecha1'),
                            ('$email2',
                            '$nombre2',
                            '$password2',
                            '$fecha2'),
                            ('$email3',
                            '$nombre3',
                            '$password3',
                            '$fecha3')
                            ";

$result = mysqli_query($conexion,$sql);

if ($result==1) {
    echo 'Datos insertados con exito';
} else {
    echo 'Algo falló';
}

 ?>
