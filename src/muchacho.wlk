class Muchacho {
	var acciones = []
	var estadoEnLaCarcel
	var energia

	method provocacionTotal() = acciones.sum { accion => accion.provocacion(self) }
	
	method golpear() {
		if(self.provocacionTotal() > 1000){
			energia -= acciones.size()
		}
		else {
			self.error("nivel de provocacion insuficiente")
		}
	}
	
	method descansar() {
		estadoEnLaCarcel.descansar()
	}
	
	method restarEnergia(cantidad) {
		energia -= cantidad
	}
	
	method energia(unaEnergia) {
		energia = unaEnergia
	}
	
	method estadoEnLaCarcel(unEstado) {
		estadoEnLaCarcel = unEstado
	}
	
	method puedeEscapar(){
		return energia > 100
	}
}

class Extraniador inherits Muchacho {
	var edadDeLaMadre = 80
	
	override method puedeEscapar() = super() && edadDeLaMadre > 50
}

object conHijos inherits Muchacho {
	override method puedeEscapar() = true
}

object ingeniero inherits Muchacho {
	override method puedeEscapar() = false
}