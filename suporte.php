<?php 
    $titulo_pagina = "Suporte";
    $success = $_GET['success'] ?? null
?>



<!DOCTYPE html>
<html lang="pt-BR">
    <?php require('./modulos/top-menu.php') ?>
    <body>
        <div id="body-container">
            <?php require('./modulos/side-menu.php') ?>
            <div id="content">
                <div id="header">SUPORTE </div>
                <div class="suporte">
                <form class name="suporte_form" action="duvidas-suporte.php" method="post">
                    <div class="form-h1">
                        <h1>Entre em contato</h1>
                    </div>
                    <input type="text" id="nome" placeholder="digite seu nome" required="required" name="nome" />
                    <label class="form-nome" for="nome">Nome</label>
                    <br>
                    <br>
                    <input type="email" id="email" placeholder="digite seu email" required="required" name="email" />
                    <label class="form-nome" for="email">Email</label>
                    <br>
                    <br>
                     <select class="form-nome" name="assunto" >
                            <option value="Sugestao">Sugestão </option>
                            <option value="Criticas">Criticas </option>
                            <option value="Elogios"> Elogios  </option>
                            <option value="Duvidas"> Dúvidas  </option>
                            <option value="Suporte"> Suporte  </option>
                            <option value="Outros">  Outros   </option>
                        </select>
                    <label class="assunto-nome" for="select">Assunto</label>   
                    <br>
                    <br>
                    <textarea placeholder="Deixe sua opinião" name="mensagem" required="required"></textarea>
                    <br>
                    <br>
                    <input type="submit" class="enviar" onclick="Enviar();" value="Enviar" required="required" />
                    <?php if($success != null) { ?>
                        <div class="success"><?=$success?></div>
                    <?php } ?>

                    

                    
                </form>
                
                
            </div>
                
            </div>
        </div>
    </body>
</html>