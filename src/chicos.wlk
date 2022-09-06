import elementos.*

object macaria {
	var nivelIra= 10
	const property disfraces = [ ]
	var property caramelos = 0

	method capacidadSusto(){
		return nivelIra + disfraces.fold(0, {acum, disfraz => acum + disfraz.nivelSusto() } )
	}
	method recibirCaramelos(n){
		caramelos = n - n.div(4)
	}
	method disfrazar(disfraz){
		disfraces.add(disfraz)
	}
	method dejarDeUsarMenosEfectivo(){
		const efectividad = disfraces.sortedBy{a, b => a.nivelSusto()> b.nivelSusto()}
		disfraces.remove(efectividad.last())
	}
	method enojar(){
		nivelIra += 1
	}
}

object pancracio {
	var asustar = "buuuu"
	const property disfraces = [mascaraDracula]
	var property caramelos = 0
	
	method capacidadSusto() = asustar.size()-1 + disfraces.fold(0, {acum, disfraz => acum + disfraz.nivelSusto() } )
	
	method disfrazar(disfraz){
		disfraces.clear()
		disfraces.add(disfraz)
	}
	method recibirCaramelos(n){
		caramelos += n
	}
	method quitarDisfraz(disfraz){
		asustar = asustar + "uu"
	}
}

// El chico inventado .

object pedro {
	var property caramelos = 0
	const property disfraces = []
	
	method capacidadSusto(){
		return disfraces.fold(0, {acum, disfraz => acum + disfraz.nivelSusto() } )
	}
	method disfrazar(disfraz){
		disfraces.add(disfraz)
	}
	method tirarTodosLosDisfraces(){
		disfraces.clear()
	}
	
	method recibirCaramelos(n){
		caramelos += n
	}
	
}

