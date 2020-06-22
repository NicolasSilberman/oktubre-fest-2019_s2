import marcas.*

class Jarras{
	var property litros
	var property cerveza
	
	method contenidoAlcoholico() {
		return self.litros() * (cerveza.graduacion() / 100)
	}
	
	method marca() = cerveza.marca()
	
	
}
