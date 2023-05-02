import remiseras.*
import clientes.*

object oficina {
	var remisera1
	var remisera2
	
	method asignarRemiseras(opcion1, opcion2){
		remisera1 = opcion1
		remisera2 = opcion2
	}
	method cambiarPrimerRemiseraPor (remisera){
		remisera1 = remisera
		
	}
	method cambiarSegundaRemiseraPor (remisera){
		remisera2 = remisera
	}
	method intercambiarRemiseras(){
		const segunda = remisera1
		const primera = remisera2
		
		self.cambiarPrimerRemiseraPor (primera)
		self.cambiarSegundaRemiseraPor (segunda)
	}
	
	method remiseraElegidaParaViaje(cliente, km){
		if(remisera1.precioACobrar(cliente, km)- remisera2.precioACobrar(cliente, km) > 30 ){
			return remisera2
		}else{ 
			return remisera1
		}
	}
}