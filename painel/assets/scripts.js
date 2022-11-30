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


