import cosas.* 

object casaDePepeYJulian {
	const cosas = []
	
	method comprar (cosa){
		cosas.add(cosa)
	}
	
	method cantidadDeCosasCompradas(){
		return cosas.size()
	}
	
	method tieneComida(){
		return cosas.any({a=> a.esComida() })
	}
	
	method vieneDeEquiparse(){
		return (cosas.last().esElectrodomestico() or
			cosas.last().precio() > 5000)
	}
	
	method esDerrochona(){
		return (cosas.sum({a=> a.precio()})) >= 9000
	}
	
	method comprarMasCara(){
		return cosas.max({a=> a.precio()})
	}
	
	method electrodomesticosComprados(){
		return cosas.filter({a=> a.esElectrodomestico()})
	}
	
	method malaEpoca(){
		return cosas.all({a=> a.esComida()})
	}
	
	method queFaltaComprar(lista){
		return ((lista.asSet()).difference(cosas.asSet()))
	}
	
	method faltaComida(){
		return (cosas.filter({a=> a.esComida()}).size() < 2 )
	}
	
	
	
}
