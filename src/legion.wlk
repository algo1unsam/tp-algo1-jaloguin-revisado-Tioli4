import chicos.*
import elementos.*
import adultos.*

object legionDelTerror {
	const integrantes = [ ]
	
	method capacidadSusto(){
		return integrantes.fold(0, {acum, chique => acum + chique.capacidadSusto()})
	}
	method recibirCaramelos(){
		const lider = integrantes.map({chique => chique.capacidadSusto()})
		const liderIndex = lider.indexOf(lider.max())
		integrantes.charAt(liderIndex).recibirCaramelos()
	}
	method agregarIntegrantes(chico){
		integrantes.add(chico)
	}
	method caramelos(){
		return integrantes.fold(0,{acum, chique => acum + chique.caramelos()})
	}
	method normaSinRepetidos(){
		
	}
}

