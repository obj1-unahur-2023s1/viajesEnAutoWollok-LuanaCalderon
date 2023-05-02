import remiseras.*
import clientes.*
import oficina.*

describe "test clientes"{
	method initialize(){
		lucia.reemplazaA(juana)
		melina.trabajaPara(ludmila)
		oficina.asignarRemiseras(roxana, mariela)
	}
	test "ludmila precio por viaje  de 10km"{
		assert.equals(180, ludmila.precioPorViaje(10))
	}
	test "anaMaria precio por viaje  de 10km si esta estable"{
		assert.equals(300, anaMaria.precioPorViaje(10))
	}
	test "anaMaria precio por viaje  de 10km si no esta estable"{
		anaMaria.noEstaEstableAhora()
		assert.equals(250, anaMaria.precioPorViaje(10))
	}
	test "teresa precio por viaje  de 10km y precio por km es 22"{
		assert.equals(220, teresa.precioPorViaje(10))
	}
	test "teresa precio por viaje  de 10km y precio por km es 30"{
		teresa.precioPorKm(30)
		assert.equals(300, teresa.precioPorViaje(10))
	}
	test "melina precio por viaje  de 10km reemplazando a ludmila"{
		assert.equals(150, melina.precioPorViaje(10))
	}
}


describe "test remiseras"{
	method initialize(){
		lucia.reemplazaA(juana)
		melina.trabajaPara(ludmila)
		oficina.asignarRemiseras(roxana, mariela)
	}
	test "roxana hace un viaje para ludmila de 10km"{
		assert.equals(180, roxana.precioACobrar(ludmila, 10))
	}
	test "gabriela hace un viaje para ludmila de 10km"{
		assert.equals(216, gabriela.precioACobrar(ludmila, 10))
	}
	test "mariela hace un viaje para ludmila de 1km"{
		assert.equals(50, mariela.precioACobrar(ludmila, 1))
	}
	test "juana hace un viaje para ludmila de 10km"{
		assert.equals(200, juana.precioACobrar(ludmila, 10))
	}
	test "juana hace un viaje para ludmila de 5 km"{
		assert.equals(100, juana.precioACobrar(ludmila, 5))
	}
	test "lucia hace un viaje para ludmila de 5 km reemplazando a juana"{
		assert.equals(100, juana.precioACobrar(ludmila, 5))
	}
}


