import  mensajeros.*

object empresa {
  const mensajeros = #{roberto, chuckNorris, neo}

  method contratarMensajero(unMensajero) {
    mensajeros.add(unMensajero)
  }
  method despedirMensajero(unMensajero) {
    mensajeros.remove(unMensajero)
  }
  method despedirAtodosLosMensajeros() {
    mensajeros.clear()
  }
  method mensajeriaGrande() {
    return mensajeros.size() > 2
  }
  method pesoDelUltimoMensajero() {
    return mensajeros.last().peso()
  }
  method algunoPuedePasarABrooklyn() {
    mensajeros.any({
        mensajero => puenteBroklyn.puedePasar(mensajero)
    })
  }
}