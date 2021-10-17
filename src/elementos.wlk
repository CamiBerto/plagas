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
	override method recibirAtaque(plaga) {
		nivelDeMugre += plaga.nivelDanio()
	}
}

class Huerta inherits Elemento{
	var property capacidadDeProduccion
	var property nivel = nivelDeProduccion

	override method esBueno() {
		return self.capacidadDeProduccion() > self.nivel()
	}
	override method recibirAtaque(plaga) {
		capacidadDeProduccion -= plaga.nivelDanio() * 0.1
		if (plaga.transmiteEnfermedades()){
			capacidadDeProduccion = 0.max(capacidadDeProduccion - 10)
		}
		
	}
	
	method nivel()= nivelDeProduccion.nivel()
	
	

}
object nivelDeProduccion{
		var property nivel = 4
}
	

class Mascota inherits Elemento {
	
	var property nivelDeSalud =0
	
	override method esBueno() = nivelDeSalud > 250
	override method recibirAtaque(plaga) {
		if (plaga.transmiteEnfermedades()) {
			nivelDeSalud = 0.max( nivelDeSalud - plaga.nivelDanio())
		}
	}
}

class Barrio inherits Elemento {
	var property elementosEnElBarrio  = []
	method agregarElemenotAlBarrio(elemento){
		elementosEnElBarrio.add(elemento)
	}
	method contarBuenos(){
		return elementosEnElBarrio.count({e => e.esBueno()})
	}
	method esCopado(){
		const buenos = self.contarBuenos()
		const malos = elementosEnElBarrio.size() - malos
		return buenos > malos
	}
}