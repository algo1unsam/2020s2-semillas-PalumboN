class Planta {
	const anioDeObtencion
	const altura
	
	// Template method
	method esFuerte() {
		return self.horasDeSolQueTolera() > 10
	}
	method horasDeSolQueTolera() // Abstracto
	
	method daNuevasSemillas() {
		return self.esFuerte() or self.condicionAlternativaParaSemillas()
	}
	method condicionAlternativaParaSemillas()
	
}

class Menta inherits Planta {
	override method horasDeSolQueTolera() { return 6 }
	override method condicionAlternativaParaSemillas() { return altura > 0.4 }
	method espacioQueOcupa() { return altura * 3 }
	
	method parcelaEsIdeal(parcela) { return parcela.superficie() > 6 }
}

class HierbaBuena inherits Menta {
	override method espacioQueOcupa() { return super() * 2 }
}

class Soja inherits Planta {
	override method horasDeSolQueTolera() { 
		return if (altura < 0.5) 6 else if (altura.between(0.5, 1)) 7 else 9
	}
	override method condicionAlternativaParaSemillas() { 
		return anioDeObtencion > 2007 and altura > 1
	}
	method espacioQueOcupa() { return altura / 2 }
}

class SojaTransgenica inherits Soja {
	override method daNuevasSemillas() { return false }
}

class Quinoa inherits Planta {
	const property horasDeSolQueTolera
	/// .. completar ...
	
	method parcelaEsIdeal(parcela) { return parcela.ningunaPlantaSuperiorA(1.5) }
}

