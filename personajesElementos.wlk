//personajes
object luisa{
    var personajeActivo = mario
    method aparece(unElemento) {
        personajeActivo.encontrar(unElemento)
    }
    method cambiarPesonaje(unPersonaje) {
        personajeActivo = unPersonaje
    }
}

object floki{
    var arma = ballesta
    method encontrar(unElemento){
        if(arma.estaCargada()){
            arma.haSidoUsada()
            unElemento.recibirAtaque(arma)
        }
    }
    method arma() = arma
    method cambiarArma(unArma) {
        arma = unArma
    } 

}

object mario{
    var ultimoElementoEncontrado = aurora
    var valorRecolectado = 0
    method encontrar(unElemento){
        unElemento.recibirTrabajo()
        valorRecolectado = valorRecolectado + unElemento.darValor()
        ultimoElementoEncontrado = unElemento
    }
    method estaFeliz() {
        return valorRecolectado >= 50 or ultimoElementoEncontrado.altura() > 10
    }
}
//armas
object ballesta{
    var flechas = 10
    method estaCargada() = flechas > 0
    method potencia() = 4
    method haSidoUsada() {
        flechas = flechas - 1
    }  

}

object jabalina{
    var estaCargada = true
    method haSidoUsada() {
        estaCargada = false
    } 
    method potencia() = 30
}
// elementos
object castillo{
    var nivelDeDefensa = 150 
    method altura() = 20
    method recibirAtaque(unArma) {
        nivelDeDefensa = nivelDeDefensa - unArma.potencia()
    }
    method darValor() = nivelDeDefensa / 5
    method recibirTrabajo() {
        nivelDeDefensa = (nivelDeDefensa + 20).min(200)
    }
}

object aurora{
    var estaViva = true
    method altura() = 1
    method recibirAtaque(unArma) {
        if(unArma.potecia() > 10){
            estaViva = false
        } 
    }
    method darValor() = 15
    method recibirTrabajo() {
      
    } 
}

object tipa{
    var altura = 80
    method recibirAtaque(unArma){

    }
    method darValor() = altura * 2
    method recibirTrabajo() {
        altura = altura + 1
    }
}