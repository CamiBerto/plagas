import plagas.*

class Elemento{
	method esBueno()
	method recibirAtaque(plaga)
}

class Hogar inherits Elemento{
	var property nivelDeMugre = 0
	var property confort = 0
	override method esBueno(){
		return self.nivelDeMugre() <= (self.confort()/2)
	}
}

class Huerta inherits Elemento{
	var property capacidadDeProduccion
	var nivel = nivelDeProduccion

	override method esBueno() {
		return self.capacidadDeProduccion() > self.nivel()
	}
	
	
	method nivel()= nivelDeProduccion.nivel()
	
	

}
object nivelDeProduccion{
		var property nivel = 4
}
	

class Mascota inherits Elemento {
	
	var property nivelDeSalud =0
	
	override method esBueno() = nivelDeSalud > 250
	
}

class Barrio inherits Elemento {
	
}