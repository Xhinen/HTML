(:for $x in doc("coleccion.xml")/coleccion/cd
where $x/precio < 10
return $x/titulo/text():)

(:Fichero de entrada -> XQuery FLWOR -> Fichero XML Resultado:)

(:Sigue la norma FLWOR: FOR, LET, WHERE ORDER BY, Y RETURN:)

(:for $x in doc("coleccion.xml")/coleccion/cd/titulo
return
  <titulos>{$x}</titulos>:)
  
let $x := doc("coleccion.xml")/coleccion/cd/titulo
return
  <titulos>{$x}</titulos>