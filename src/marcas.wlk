class Cerveza {
	
	var property lupulo
	var property paisOrigen
	var property marca
}

class CervezaRubia inherits Cerveza {
	var property graduacion
}
	
class CervezaNegra inherits Cerveza {
	method graduacion() {return graduacionMundial.graduacionReglamentaria().min(lupulo * 2)}
}
class CervezaRoja inherits CervezaNegra {
	override method graduacion() {return super()*1.25}
}

object graduacionMundial{
	var property graduacionReglamentaria
}