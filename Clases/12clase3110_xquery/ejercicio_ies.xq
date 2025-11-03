(:1 Mostar el nombre dle instituto:)
(:doc("ies.xml")//ies/nombre/text():)

(:2 Monstrar la web del instituo:)
(:doc("ies.xml")//web/text():)

(:3 Mostrar los nombre de todos los ciclos formativos:)
(:for $x in doc("ies.xml")//ciclo
  return $x/nombre/text():)
  
(:4 Mostrar los identificadores (id) de todos los ciclos:)
(:for $x in doc("ies.xml")//ciclo
  return data($x/@id):)