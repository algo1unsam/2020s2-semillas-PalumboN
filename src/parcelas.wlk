class Parcela {
	const ancho
	const largo
	const horasDeSol
	const plantas = []
	
	
	method superficie() { return ancho * largo }
	
	method tieneComplicaciones() { 
		return plantas.any({planta => planta.horasDeSolQueTolera() < horasDeSol })
	}
	
	method plantar(planta) { 
		// Validar que entre en la parcela
		self.validarHorasDeSol(planta)
		plantas.add(planta)
	}
	
	method validarHorasDeSol(planta) {
		if (horasDeSol - planta.horasDeSolQueTolera() > 2) {
			self.error("Esta parcela recibe mucho sol para esa planta")
		}
	}
}