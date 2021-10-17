import elementos.*

class Plagas {
	var property poblacion =0
	
	method transmitenEnfermedades(){
		return poblacion >= 10
	}
method  nivelDanio() = return poblacion * 2
	
	
}
class Cucaracha inherits Plagas{
	var property pesoPromedio=0
	override method transmitenEnfermedades(){
		return super() && pesoPromedio > 10
	}
	override method nivelDanio() = return super() / 2
}

class Pulga inherits Plagas{
	override method nivelDanio() =  return super()* 2
}
class Garrapatas inherits Pulga{
	
}
class Mosquito inherits Plagas{
	 method nivelDanio() = return poblacion
	 override method transmitenEnfermedades(){
		return super() && poblacion % 3 ==0
	}
}

