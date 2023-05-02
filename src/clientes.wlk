import remiseras.*

object ludmila {
	method precioPorViaje(km){ return 18 * km}
}
object anaMaria{
	var estaEstable = true
	
	method precioPorViaje(km){ 
		if(estaEstable){
			return (30 * km)
		}else {return 25 * km }
	}
	method estaEstableAhora(){ estaEstable = true}	
	method noEstaEstableAhora(){ estaEstable = false}
}
object teresa{
	var precioKm = 22
	
	method precioPorViaje(km){ return precioKm * km}
	method precioPorKm(nuevoPrecio){ precioKm = nuevoPrecio}
}
object melina{
	var clienteQueReemplaza
	
	method trabajaPara(unCliente){
		clienteQueReemplaza = unCliente
	}
	method precioPorViaje(km){ 
		return (clienteQueReemplaza.precioPorViaje(km) - (km * 3))
	}
}