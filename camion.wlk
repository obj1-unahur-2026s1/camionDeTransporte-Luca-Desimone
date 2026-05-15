import cosas.*


object camion {
const objetos = [ knightrider, bumblebee, paqueteDeLadrillos, bateriaAntiaerea, contenedorPortruario
,residuosRadioacvtivos,embalajeDeSeguridad]


method cargarObjeto(objeto) =  objetos.add(objeto)
method descargarObjeto(objeto) =  objetos.remove(objeto)

method pesoTotalCamion() = objetos.map({p => objetos.peso()}).sum()+1000

method objetosCargadosSonPares() = objetos.forEach({p => objetos.peso()}).even()

method consultarPeso(peso) =  objetos.map({p => objetos.peso()}).find(peso)



}