import marcas.*
import jarras.*
import personas.*

class Carpas {
	var property capacidad
	var property tieneBanda = false
	var property marcaVendida
	var personasDentro = []
	
	method puedeIngresar(unaPersona) {
		return not unaPersona.estaEbria() and self.capacidad() > self.personasDentro().size()}
	
	method efectivizarIngreso(unaPersona) {personasDentro.add(unaPersona)}
	method personasDentro() {return personasDentro}
	
	method servirJarra(unaPersona, tamanio) {
		if(self.personasDentro().contains(unaPersona)) 
		{ unaPersona.comprarJarra(new Jarras(litros=tamanio,cerveza=marcaVendida)) }
		else {throw new Exception (message = "La persona no esta en la carpa")}	
	}
	
}