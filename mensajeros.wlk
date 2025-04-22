object roberto {
  var vehiculo = null

  method setVehiculo(unVehiculo) {
    vehiculo = unVehiculo
  }
  method peso() = 90 + vehiculo.peso()
  method puedeLlamar() = false
}
object chuckNorris {

  method peso() = 80
  method puedeLlamar() = true
}
object neo {
  var tieneCredito = true

  method peso() = 0
  method puedeLlamar() = tieneCredito
  method cambiarCredito() {
    tieneCredito = !tieneCredito
  }
}
//vehiculos
object bici {
  method peso() = 5
}
object camion {
  var cantAcoplados = 0

  method setCantAcoplados(cantidad) {
    cantAcoplados = cantidad
  }
  method peso() = cantAcoplados * 500
}
//destinos
object puenteBroklyn {
  method puedePasar(unMensajero) = paquete.estaPago() && unMensajero.peso() < 1000
}
object matrix {
  method puedePasar(unMensajero) = paquete.estaPago() && unMensajero.puedeLlamar()
}
object paquete {
  var estaPago = false

  method pagar() {
    estaPago = true
  }
  method deber() {
    estaPago = false
  }
  method estaPago() = estaPago
}