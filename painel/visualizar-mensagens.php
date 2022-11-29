<?php

require('./modulos/top-menu.php');

$id_suporte = $_GET['id'] ?? null;

$query_visualizar_mensagem = "SELECT * FROM suporte WHERE id = '{$id_suporte}'";

$mensagens =mysqli_fetch_array(mysqli_query($conn, $query_visualizar_mensagem));

?>

<div id="list-caontainer">

    <div class="mensagem">
        <h3>Nome</h3>
        <div id="nome"><?=$mensagens['nome']?></div>
    </div>

    <div class="mensagem">
        <h3>Email</h3>
        <div id="nome"><?=$mensagens['email']?></div>
    </div>

    <div class="mensagem">
        <h3>Assunto</h3>
        <div id="nome"><?=$mensagens['assunto']?></div>
    </div>

    <div class="mensagem">
        <h3>Mensagem</h3>
        <textarea id="textmensagem" readonly name="mensagem" id="mensagem" cols="30" rows="10"><?=$mensagens['mensagem']?></textarea>

    </div>

    <a class="back" href="mensagens.php"><button id="voltar">voltar</button>
    
    
</div>

<?php require('./modulos/footer.php') ?>