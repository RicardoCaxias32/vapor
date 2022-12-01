// FUNÇÃO PARA EXCLUIR JOGOS, IDIOMAS, PLATAFORMAS E CATEGORIAS

function excluirJogo(idJogo) {
    let excluirJogo = confirm("Realmente deseja excluir esse jogo?")

    if (excluirJogo == true){

        
        window.open("excluir-jogo.php?id=" + idJogo, "_SELF")
    }

}

function excluirPlataforma(idPlataforma) {
    let excluirPlataforma = confirm("Realmente deseja excluir essa plataforma?")

    if (excluirPlataforma == true){

        
        window.open("excluir-plataforma.php?id=" + idPlataforma, "_SELF")
    }

}

function excluirIdioma(idIdioma) {
    let excluirIdioma = confirm("Realmente deseja excluir esse idioma?")

    if (excluirIdioma == true){

        
        window.open("excluir-idioma.php?id=" + idIdioma, "_SELF")
    }

}


// FUNÇÃO DE EXCLUIR MENSAGENS //
function removeErrorMessage() {
    let errorMessage  = document.getElementById('error')

    if (errorMessage != null){
        errorMessage.remove()

        
    }

}

function removeIdioma() {
    let excluirErrorIdioma  = document.getElementById('error-idioma')

    if (excluirErrorIdioma != null){
        excluirErrorIdioma.remove()

        
    }

}

function removePlataforma() {
    let excluirErrorPlataforma  = document.getElementById('error-plataforma')

    if (excluirErrorPlataforma != null){
        excluirErrorPlataforma.remove()

        
    }

}

function removeCategoria() {
    let excluirCategoria  = document.getElementById('error-categoria')

    if (excluirErrorCategoria != null){
        excluirErrorCategoria.remove()

        
    }

}




