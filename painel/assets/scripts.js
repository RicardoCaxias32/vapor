//function excluirJogo(idJogo) {
   // alert(idJogo)
//}

function excluirJogo(idJogo) {
    let excluirJogo = confirm("Realmente deseja ecluir esse jogo?")

    if (excluirJogo == true){

        alert("Excluindo jogo...")
        window.open("excluir-jogo.php?id=" + idJogo, "_SELF")
    }

}

function removeErrorMessage() {
    let errorMessage  = document.getElementById('error')

    if (errorMessage != null){
        errorMessage.remove()

        
    }

}

function removeIdioma() {
    let excluirIdioma  = document.getElementById('error-idioma')

    if (excluirIdioma != null){
        excluirIdioma.remove()

        
    }

}

function removePlataforma() {
    let excluirPlataforma  = document.getElementById('error-plataforma')

    if (excluirPlataforma != null){
        excluirPlataforma.remove()

        
    }

}

function removeCategoria() {
    let excluirCategoria  = document.getElementById('error-categoria')

    if (excluirCategoria != null){
        excluirCategoria.remove()

        
    }

}




