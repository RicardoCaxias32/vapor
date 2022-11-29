<?php
    require('./modulos/conexao.php');
    
    $nome = $_POST['nome'] ?? null;
    $email = $_POST['email'] ?? null;
    $assunto = $_POST['assunto'] ?? null;
    $mensagem = $_POST['mensagem'] ?? null;

    $query_suporte = "INSERT INTO suporte (nome, email, assunto, mensagem) values('{$nome}','{$email}','{$assunto}','{$mensagem}')";
    
    mysqli_query($conn, $query_suporte);
    
    $query_arquivos = "INSERT INTO arquivos (nome, email, assunto, mensagem) values('{$nome}','{$email}','{$assunto}','{$mensagem}')";
    
    mysqli_query($conn, $query_arquivos);

    if($query_suporte != null){

        header("location: suporte.php?success= mensagem enviada com sucesso");
    }
?>