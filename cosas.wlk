object knightrider {
  const peso = 500
  const peligro = 10

  method peso() = peso 
  method peligro() = peligro 
}

object  bumblebee {
  const peso = 800
  var peligro = 15

  method modoAuto() {
    peligro = 15
  }
    method modoRobot() {
    peligro = 30
  }

  method cambiarModo(modo) {
    peligro = modo
  }

    method peso() = peso 
  method peligro() = peligro 
}

object paqueteDeLadrillos {
  var peso = null
  const peligro = 2

  method peso(cantidadLadrillos) { 
    peso = cantidadLadrillos*2
    } 
  method peligro() = peligro 
}

object arenaAGranel {
  var peso = null
  const peligro = 1 


  method peso(pesoactual) {
    peso = pesoactual
  } 
  method peligro() = peligro 
}

object bateriaAntiaerea {
  var peso = 300
  var peligro = 10


method estaConMisiles() {
  peso = 300
  peligro = 100
}

method estaSinMisiles() {
  peso = 200
  peligro = 0
}

  method peso() = peso 
  method peligro() = peligro 

}

object contenedorPortruario {
  var peso = 0
  var peligro = 0
  var objetos = []

  method cargarContenedor(objeto) {
    objetos.add(objeto)
  }

    method descargarContenedor(objeto) {
    objetos.remove(objeto)
  }

  method objetosDentrosDelContenedor() {
    peso = objetos.sum({o => objetos.peso()})+100
  }

  method peligrosidadDeObjetos() {
    peligro = objetos.max({o => objetos.peligro()})
  }

  method peligroDelObjeto() {
    if (objetos.isEmpty()){
        peligro = 0
    } else self.peligrosidadDeObjetos()
  }

  method peso() = peso 
  method peligro() = peligro 
}

object residuosRadioacvtivos {
  var peso = 1
  const peligro = 200
  
  method peso() = peso 
  method peligro() = peligro 
}

object embalajeDeSeguridad {
  var peso = 0
  var peligro = 0

  method objetoEmbalado(objeto) {
    peso = objeto.peso()
    peligro = objeto.peligro().div(2)
  }

 method peso() = peso 
 method peligro() = peligro 
}