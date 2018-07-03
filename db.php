<?php
  

  $link = mysqli_connect("localhost", "root", "", "hotel");

 

// Check connection

if($link === false){

    die("ERROR: Could not connect. " . mysqli_connect_error());

}

 

// Escape user inputs for security
if (isset($_POST['submit'])) {
    # code...

$username = mysqli_real_escape_string($link, $_REQUEST['username']);

$firstname = mysqli_real_escape_string($link, $_REQUEST['firstname']);

$lastname = mysqli_real_escape_string($link, $_REQUEST['lastname']);

$email = mysqli_real_escape_string($link, $_REQUEST['email']);

$telno = mysqli_real_escape_string($link,$_REQUEST['telno']);

$idPass = mysqli_real_escape_string($link,$_REQUEST['idPass']);

$gender = mysqli_real_escape_string($link,$_REQUEST['gender']);

$password = mysqli_real_escape_string($link, $_REQUEST['password']);



} 

// attempt insert query execution

$sql = "INSERT INTO signup (username,firstname, lastname, email, telno, idPass, gender, password) VALUES ('$username', '$firstname', '$lastname', '$email', '$telno', '$idPass', '$gender', '$password')";



if(mysqli_query($link, $sql)){

    echo "Records added successfully.";
    header("location: login.html");

} else{ 

    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);

}

 


?>