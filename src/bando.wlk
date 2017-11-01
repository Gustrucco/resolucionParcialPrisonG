class Bando {
	var integrantes = #{}
	var elementos = []
	
	constructor(unosElementos) {
		elementos = unosElementos
	}
	
	method poder() =  integrantes.max { integrante => integrante.provocacionTotal() }
	
	method puedeSalir() = integrantes.all { integrante => integrante.puedeSalir() }

	method atacar(otroBando) {
		if(self.poder() > otroBando.poder()){
			var elementoCualquiera = otroBando.algunElemento()
			self.robarElemento(otroBando, elementoCualquiera)
		}
	}
	
	method algunElemento(){
		return elementos.anyOne()
	}
	
	method robarElemento(unBando, elemento){
		unBando.perder(elemento)
		elementos.add(elemento)
	}
	
	method perder(elemento) {
		elementos.remove(elemento)
	}
	
	method sufrirAtaqueDelGringo() {
		elementos.removeAll()
		var elementosPares = elementos.filter { elemento => elemento.size().even() }
		gringo.tomaMisElementos(elementosPares)
	}
}

object agenteG {
	var coeficienteG = 100
	var elementos = ["cigarrillos", "unEncendedor"]
	
	method poder() = coeficienteG
	
	method atacar(otroBando) { }
	
	method sufrirAtaqueDelGringo() {
		elementos.add("tanga", "trapo")
		coeficienteG *= 0.8
	}
}

object gringo {
	var elementos = ["documentos", "una tanga", "un pagnuelo", "chumbo"]
	method poder() = elementos.size()
	

	method atacar(otroBando) {
		otroBando.sufrirAtaqueDelGringo()
	}
	
	method tomaMisElementos(unosElementos){
		var elementosGringueados = unosElementos.map { elemento => elemento + "del Gringo" }
		elementos.addAll(elementosGringueados)
	}
}