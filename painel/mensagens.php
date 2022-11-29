<?php

require('./modulos/top-menu.php');

$query_mensagens = "SELECT id, nome, assunto FROM suporte";
$mensagens = mysqli_query($conn, $query_mensagens);

?>

<?php if ($mensagens -> num_rows == 0 ) { ?>
    <h1 id="mensagem-suporte">Não ha nenhuma mensagem por agora</h1>
    <?php } else { ?>
<div id="content-container">
    
    <div id="list-container">
        <table>
            <tr>
                <th class="center">Nome</th>
                <th class="center">Assunto</th>
                <th class="center">Visualizar</th>
                <th class="center">Arquivar</th>


            </tr>

            <?php while ($mensagem = mysqli_fetch_array($mensagens)) { ?>

                <tr>
                    <td><?= $mensagem['nome'] ?></td>
                    <td><?= $mensagem['assunto'] ?></td>
                    <td class="center"><a href="visualizar-mensagens.php?id=<?= $mensagem['id'] ?>">Visualizar</a></td>
                    <td class="center"><a href="excluir-mensagem-suporte.php?id=<?= $mensagem['id'] ?>">Arquivar</a></td>
                </tr>

            <?php } ?>


        </table>
    </div>
</div>
<?php }?>

<?php require('./modulos/footer.php') ?>