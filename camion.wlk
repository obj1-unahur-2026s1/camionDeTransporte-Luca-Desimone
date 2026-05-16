import cosas.*


object camion {
const objetos = [ knightrider, bumblebee, paqueteDeLadrillos, bateriaAntiaerea, contenedorPortruario
,residuosRadioacvtivos,embalajeDeSeguridad]


method cargarObjeto(objeto) =  objetos.add(objeto)
method descargarObjeto(objeto) =  objetos.remove(objeto)

method pesoTotalCamion() = objetos.sum({p => objetos.peso()})+1000

method objetosCargadosSonPares() = objetos.all({p => objetos.peso().even()})
method consultarPeso(peso) =  objetos.any({p => objetos.peso() == peso})

method primerCargaConValor(peligrosidad) = objetos.find({p => objetos.peligro() == peligrosidad})

method cosasQueSuperanNivel_(peligrosidad) = objetos.filter({p => objetos.peligro() > peligrosidad}) 

method cosasQueSuperanNivelDe_(cosa) = objetos.filter({p => p.peligro() > cosa.peligro()})

method execidoDePeso() = self.pesoTotalCamion()> 2500

method nadaSuperNivelDePeligrosidad(nivel) = self.cosasQueSuperanNivel_(nivel).isEmpty()

method puedeCircular(peligrosidad) { !self.execidoDePeso() && self.nadaSuperNivelDePeligrosidad(peligrosidad)}
 
}