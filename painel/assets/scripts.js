// // FUNÇÃO PARA EXCLUIR JOGOS, IDIOMAS, PLATAFORMAS E CATEGORIAS

// function excluirJogo(idJogo) {
//     let excluirJogo = confirm("Realmente deseja excluir esse jogo?")

//     if (excluirJogo == true){

        
//         window.open("excluir-jogo.php?id=" + idJogo, "_SELF")
//     }

// }

// function excluirPlataforma(idPlataforma) {
//     let excluirPlataforma = confirm("Realmente deseja excluir essa plataforma?")

//     if (excluirPlataforma == true){

        
//         window.open("excluir-plataforma.php?id=" + idPlataforma, "_SELF")
//     }

// }

// function excluirIdioma(idIdioma) {
//     let excluirIdioma = confirm("Realmente deseja excluir esse idioma?")

//     if (excluirIdioma == true){

        
//         window.open("excluir-idioma.php?id=" + idIdioma, "_SELF")
//     }

// }

// function excluirCategoria(idCategoria) {
//     let excluirCategoria = confirm("Realmente deseja excluir essa categoria?")

//     if (excluirCategoria == true){

        
//         window.open("excluir-categoria.php?id=" + idCategoria, "_SELF")
//     }

// }


// // FUNÇÃO DE EXCLUIR MENSAGENS //
// function removeErrorMessage() {
//     let errorMessage  = document.getElementById('error')

//     if (errorMessage != null){
//         errorMessage.remove()

        
//     }

// }

// function removeIdioma() {
//     let excluirErrorIdioma  = document.getElementById('error-idioma')

//     if (excluirErrorIdioma != null){
//         excluirErrorIdioma.remove()

        
//     }

// }

// function removePlataforma() {
//     let excluirErrorPlataforma  = document.getElementById('error-plataforma')

//     if (excluirErrorPlataforma != null){
//         excluirErrorPlataforma.remove()

        
//     }

// }

// function removeCategoria() {
//     let excluirCategoria  = document.getElementById('error-categoria')

//     if (excluirErrorCategoria != null){
//         excluirErrorCategoria.remove()

        
//     }

// }




 function removeElementoporId(idElemento) {
     let elemento = document.getElementById(idElemento)

     if(elemento != null) {
        elemento.remove()
     }


 }

 // FUNÇÃO PARA MOSTRAR O RELOGIO

 function obterDataHoraAtual() {
    const data = new Date()
    let horas = data.getHours()
    let minutos = data.getMinutes()
    let segundos = data.getSeconds()
    let dia = data.getDate() 
    let mes = data.getMonth()+1
    let ano = data.getFullYear()
    
    if(horas <= 9) {
      horas = "0" + hora
    }
  
    if(minutos <= 9) {
      minutos = "0" + minutos
    }
  
    if(segundos <= 9) {
      segundos = "0" + segundos
    }
  
  
    let dataAtual = dia + "/" + mes + "/" + ano + " - " + horas + ":" + minutos + ":" + segundos; 
  
  
    return dataAtual
  }

  function updateClock() {

    const clock = document.getElementById('clock')
    clock.innerHTML = obterDataHoraAtual()

    setInterval(function () {
      clock.innerHTML = obterDataHoraAtual()
      1000
    })

  }

  //FUNÇÃO PARA MUDAR AS CORES

  function getRandomInt(min, max){
    min = Math.ceil(min);
    max = Math.floor(max);
    return Math.floor(Math.random() * (max - min) + min);
  }

  function getRandomColor() {

    const min = 1
    const max = 4
    let cor = getRandomInt(min, max) 
    const id = document.getElementById("hello")
    const idname = document.getElementById("name")
    

      if (cor == 1) {
        id.style.color = 'red';
        idname.style.color = 'red';
      }

      if (cor == 2) {
        id.style.color = 'green';
        idname.style.color = 'green';
      }

      if (cor == 3) {
        id.style.color = 'blue';
        idname.style.color = 'blue';
      }

      

  }  

  function atualizarCor() {
    getRandomColor()
  
    setInterval(function() {
      getRandomColor()
    }, 500)
    
  }

  // FUNÇÃO PARA ALTERAR O TEXTO PARA MAIUSCULO

  function transformar_texto_maiusculo(elemento) {

    let valor_digitado_pelo_usuario = elemento.value = elemento.value.toUpperCase()

    elemento.value = "Texto de Teste"
  }
  
  
  



  

  