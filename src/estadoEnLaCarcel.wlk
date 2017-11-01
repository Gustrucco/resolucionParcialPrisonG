object dormilon {
	method descansar(muchacho, horas){
		muchacho.energia(100)
	}
}

object aguila {
	method descansar(muchacho, horas){
		muchacho.restarEnergia(5 * horas)
	}
}

object espia {
	method descansar(muchacho, horas){
		muchacho.energia(0)
		muchacho.estadoDeCarcel(dormilon)
	}
}