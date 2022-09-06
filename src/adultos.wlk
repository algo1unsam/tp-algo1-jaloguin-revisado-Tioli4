import chicos.*
import legion.*
import elementos.*

object mirca {
	var property tolerancia = 22
	
	method serAsustadoPor(chico){
		self.caramelosAEntregar(chico)
		tolerancia -= 1
	}
	method caramelosAEntregar(chico){
		if (tolerancia < chico.capacidadSusto())
			{chico.recibirCaramelos(chico.capacidadSusto() - tolerancia)
				return  chico.capacidadSusto() - tolerancia
			}
		else return 0
	}
}
