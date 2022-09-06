object trajeDeBruja {
	method nivelSusto() {
		return 10
	}
} 

object barba {
	var longitud = 2
	
	method nivelSusto() = longitud*5
	
	method alargar(n){
		longitud += n
	}
	method perderPelos(n){
		longitud -= n
	}
}

object mascaraDracula {
	var tamanio = 2
	
	method nivelSusto() = tamanio * 2

}

object mascaraFrankenstein {
	method nivelSusto() = 22
}

object mascaraPolitico {
	var promesas = 1
	method nivelSusto() = promesas
	method prometer(n){
		promesas += n
	}
}

