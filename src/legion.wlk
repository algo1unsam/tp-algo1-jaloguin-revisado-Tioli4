import chicos.*
import elementos.*
import adultos.*

object legionDelTerror {
	var integrantes = [ ]
	
	method capacidadSusto(){
		return integrantes.fold(0, {acum, chique => acum + chique.capacidadSusto()})
	}
	method recibirCaramelos(n){
		const lider = integrantes.sortedBy{a, b => a.capacidadSusto()> b.capacidadSusto()}
		lider.get(0).recibirCaramelos(n)
	}
	method agregarIntegrantes(chico){
		integrantes.addAll(chico)
	}
	method caramelos(){
		return integrantes.fold(0,{acum, chique => acum + chique.caramelos()})
	}
	method normaSinRepetidos(){
		
	}
}

