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
		{ unaPersona.comprarJarra([new Jarras(litros=tamanio,cerveza=marcaVendida)]) }
		else {self.error("La persona no esta en la carpa")}	
	}
	
	method ebriosEmpedernidos() {
		var ebrios = personasDentro.filter({p => p.estaEbria()})
		return ebrios.count({e => self.masDeUnLitro(e)})
	}
	
	method masDeUnLitro(persona) {return persona.jarrasCompradas().all({j=>j.litros() > 1})}
	
	
}

	