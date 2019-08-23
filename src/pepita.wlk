object pepita {
	var energia = 100

//Metodos de uso para pruebas ------------------------------------------------------------
	method energia(nuevaEnergia) {
		energia = nuevaEnergia
	}	
	method energia() {
		return energia
	}
//----------------------------------------------------------------------------------------

	method estaCansada() {
		return energia < 50
	}

	method vola(kms) {
		energia -= 10 + kms
	}

	method come(comida) {
		energia = energia + comida.energiaQueOtorga()
	}
	
	method estaFeliz(){
		return (energia >= 500) && (energia <= 1000)
	}
	
	method cuantoQuiereVolar(){
		var cuantoQuiereVolar
		cuantoQuiereVolar = energia / 5
		if(energia >= 300 && energia <= 400) cuantoQuiereVolar += 10
		if(energia % 20 == 0) cuantoQuiereVolar += 15
		return cuantoQuiereVolar		
	}

	method salirAComer(){
		self.vola(5)
		self.come(alpiste)
		self.vola(5)
	}
	
	method haceLoQueQuieras(){
		if(self.estaCansada()) self.come(alpiste)
		if(self.estaFeliz()) self.vola(8)
	}
	
}

object alpiste {
	var gramos = 10
	
	method energiaQueOtorga() { 
		return 4 * gramos
	}
	
	method gramos(nuevosGramos) {
		gramos = nuevosGramos
	}	
}

object manzana {
	method energiaQueOtorga() { 
		return 50
	}	
}

object mijo {
	var estaMojado = true	//Considerando que el mijo o esta mojado O BIEN esta seco, de lo contrario cambiaria
	
	method energiaQueOtorga() {
		if(estaMojado) return 15
		else return 20
	}

	method mojarse() {
		estaMojado = true
	}
	
	method secarse() {
		estaMojado = false
	}
	
}

object canelones {
	var tieneSalsa = true
	var tieneQueso = true
	
	method energiaQueOtorga(){
		var energiaAOtorgar = 20
		if(tieneSalsa) energiaAOtorgar += 5
		if(tieneQueso) energiaAOtorgar += 7
	}
	
	method agregarSalsa(){
		tieneSalsa = true
	}
	
	method quitarSalsa(){
		tieneSalsa = false		
	}
	
	method agregarQueso(){
		tieneQueso = true
	}
	
	method quitarQueso(){
		tieneQueso = false
	}
	
}

object roque {
	
	var ave=pepita 
//La primera opcion que se me ocurrió fue definir solamente el metodo entrenar, y pasarle al ave como parametro.
	
	method entrenar(){
		ave.vola(10)
		ave.come(alpiste)
		ave.vola(5)
		ave.haceLoQueQuieras()
	}
}
