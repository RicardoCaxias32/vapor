<?php 

require('./modulos/conexao.php');

$id_suporte = $_GET['id'] ?? null;

$query_mensagem_suporte = "DELETE FROM suporte WHERE id = {$id_suporte}";

mysqli_query($conn, $query_mensagem_suporte);


header('location: mensagens.php');

?>