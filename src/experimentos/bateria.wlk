import experimentos.experimento.*

/*	Construir una Bater�a: 
			* 	Se necesita:
					* un material que tenga m�s de 200 gramos de metal
					* y un material radiactivo. 

			*   No conduce la electricidad
			*   El metal es la suma del metal de sus componentes
			*   La electricidad que genera es 2 Amperes por gramo de metal. 
			*   Siempre es radiactiva
			*   al construirse el compa�ero de rick pierde 5 puntos de energ�a.
 */
object bateria inherits Experimento{
	 
 	override method materialesQueRequiere(mochila) = mochila.filter({unMaterial=>unMaterial.cantidadDeMetal()>200 or 
 															unMaterial.esRadioactivo()})

	override method realizar(unRick){
		super(unRick)
		unRick.companiero().energia(unRick.companiero().energia()-self.energiaQueResta())
	}
	
	override method energiaQueResta() = 5
	
	override method cuantaElectricidadGenera() = 2 * self.cantidadDeMetal()
	
	override method esRadioactivo() = true
 	
}