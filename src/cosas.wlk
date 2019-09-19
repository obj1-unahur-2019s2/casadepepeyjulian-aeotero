object heladera {
	method precio() { return 20000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cama {
	method precio() { return 8000 }
	method esComida() { return false }
	method esElectrodomestico() { return false }	
}

object tiraDeAsado {
	method precio() { return 350 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object paqueteDeFideos {
	method precio() { return 50 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object plancha {
	method precio() { return 1200 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object milanesasRebozadas{
	var property precio = 260
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object botellaDeSalsaDeTomate {
	var property precio = 90
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object microondas {
	method precio() { return 4200 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cebollas {
	method precio() { return 25 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object compu {
	method precio() { return 500 * dolar.cotizacion() }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object dolar{
	var property cotizacion = 58.5
}

object packComida{
	var property platoPrincipal = paqueteDeFideos
	var property aderezo = cebollas
	
	method precio() {
		return platoPrincipal.precio() + aderezo.precio()
	}
	method esComida() { return true }
	method esElectrodomestico() { return false }
}

object packRegalo{
	
}

