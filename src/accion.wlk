object tomatazo {
	method provocacion(muchacho) = 10
}

object hacerseElMacho {
	method provocacion(muchacho) {
		if(muchacho.energia() > 150) {
			return 20
		}
		return 10
	}
}

class Canchereo {
	var nivelDeCalidad = 20
	method provocacion(muchacho) = 100 + nivelDeCalidad
}