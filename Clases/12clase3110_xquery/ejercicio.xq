(:1. Mostrar todos los títulos de los CD's:)
(:for $cd in doc("coleccion.xml")//cd
return $cd/titulo/text():)

(:2 Mostrar titulo y artistas:)
(:
for $x in doc("coleccion.xml)//cd
return $x/artista
":)

(:3 Mostrar título y artistas juntos:)
(:
for $x in doc("coleccion.xml")//cd
  return concat($x/titulo, " - ",$x/artista)
:)
  
  
(:4 mostrar solo el titulo del primer CD:)
(:doc("coleccion.xml")//cd[1]/titulo:)

(:5 Mostrar los CDs cuyo artista se "Bob Dylan":)
(:for $x in doc("coleccion.xml")/coleccion/cd
where $x/artista = "Bob Dylan"
return $x/titulo/text():)

(:6 Mostar los títulos ordenados alfabéticamente:)
(:for $x in doc("coleccion.xml")//cd
order by $x/titulo descending
return $x/titulo/text():)

(:7 Crea una nueva estructura XML con título y artista:)
(:<catalogo>
{
  for $x in doc("coleccion.xml")//cd
  return
    <disco>
      <nombre>{data($x/titulo)}</nombre>
      <cantante>{data($x/artista)}</cantante>
    </disco>
}
</catalogo>:)

(:8 Mostrar cuántos CD's que hay en total:)
(:count(doc("coleccion.xml")//cd):)

(:9 Mostrar el título del último CD:)
(:let $x := doc("coleccion.xml")//cd
  return $x[last()]/titulo/text():)

(:10 Mostrar los títulos que contengan la palabra "heart":)
(:for $x in doc("coleccion.xml")//cd
where contains(lower-case($x/titulo), "heart")
  return $x/titulo/text():)
