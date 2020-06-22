import marcas.*
import jarras.*

class Persona {
	
	var property peso
	var property nivelDeAguante
	var property leGustaMusicaTradicional = true
	var jarrasCompradas = []
	
	method comprarJarra (unaJarra) {jarrasCompradas.addAll(unaJarra)}
	
	method cantidadJarrasCompradas() {return jarrasCompradas.size()}
	method totalDeAlcohol() {return jarrasCompradas.sum({j =>j.contenidoAlcoholico()})}
	method estaEbria() {return self.totalDeAlcohol() * self.peso() > self.nivelDeAguante()}	
}

class Belga inherits Persona {
	method leGusta(unaCerveza) {return unaCerveza.lupulo() > 4 }
	
}

class Checo inherits Persona {
	method leGusta(unaCerveza) {return unaCerveza.graduacion() > 8 }
	
}

class Aleman inherits Persona {
	method leGusta(unaCerveza) {return true}
}