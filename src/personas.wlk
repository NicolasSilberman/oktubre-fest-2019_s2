import marcas.*
import jarras.*
import carpas.*

class Persona {
	
	var property peso
	var property nivelDeAguante
	var property leGustaMusicaTradicional = true
	var jarrasCompradas = []
	
	method comprarJarra (unaJarra) {jarrasCompradas.addAll(unaJarra)}
	method jarrasCompradas() {return jarrasCompradas}
	
	method cantidadJarrasCompradas() {return jarrasCompradas.size()}
	method totalDeAlcohol() {return jarrasCompradas.sum({j =>j.contenidoAlcoholico()})}
	method estaEbria() {return self.totalDeAlcohol() * self.peso() > self.nivelDeAguante()}	
	method leGusta(unaCerveza) {return true}
	
	method quiereEntrar(unaCarpa) { return self.leGusta(unaCarpa.marcaVendida()) and 
		self.leGustaMusicaTradicional() == unaCarpa.tieneBanda() }
		
	method ingresoPermitido(unaCarpa) {return self.quiereEntrar(unaCarpa) 
		and unaCarpa.puedeIngresar(self) }
		
	method ingresarEnCarpa(unaCarpa) {
		if(self.quiereEntrar(unaCarpa) and  self.ingresoPermitido(unaCarpa))
		{unaCarpa.efectivizarIngreso(self)}
		else{self.error("La persona no puede ingresar") } 
	}
	
	method nacionalidad() {return "laNacionalidad"}
	
	method esPatriota() {return self.jarrasCompradas().all({j => j.cerveza().paisOrigen() == self.nacionalidad()}) } 
	}


class Belga inherits Persona {
	override method leGusta(unaCerveza) {return unaCerveza.lupulo() > 4 }
	override method nacionalidad() {return "Belgica"}
}

class Checo inherits Persona {
	override method leGusta(unaCerveza) {return unaCerveza.graduacion() > 8 }
	override method nacionalidad() {return "Republica Checa"}
}

class Aleman inherits Persona {
	override method quiereEntrar(unaCarpa) {return super(unaCarpa) and unaCarpa.capacidad().even()}
	override method nacionalidad() {return "Alemania"}
}