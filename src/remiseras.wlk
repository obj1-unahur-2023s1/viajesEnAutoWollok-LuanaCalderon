import clientes.*

object roxana{
	method precioACobrar(cliente, km){
		 return cliente.precioPorViaje(km)
	}
}
object gabriela{
	method precioACobrar(cliente, km){
		 return cliente.precioPorViaje(km) * 1.2 	 
	}
}
object mariela{
	method precioACobrar(cliente, km){
		 return 50.max(cliente.precioPorViaje(km))
	}	 
}
object juana{
	method precioACobrar(cliente, km){
		if( km > 8 ){
			return 200	
		}else{ 
			return 100
		} 
	}	 
}
object lucia{
	var remiseraAReemplazar
	
	method reemplazaA(unaRemisera){
		remiseraAReemplazar = unaRemisera
	}
	method precioACobrar(cliente, km){
		 return remiseraAReemplazar.precioACobrar(cliente, km)
	}	 
}



