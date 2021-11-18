noTieneMama(pepe)
esDulce(caramelo)
come(pepe,radicheta)
votoUnPeronista(roberto,4,peron)
meteGolesPorPartido(palermo,boca,4)
esVerdura(lechuga)
come(roberto,lechuga)
esMayorAlPromedio(4,2)
---------------------------------


noEsFeliz(Chico) :-
noTieneMama(Chico)	
	forall(come(Chico,Alimento), not(esDulce(Alimento)))

esPeronista(votante) :- votoUnPeronista(votante,cantVotos,_) , cantVotos > 10	

jugadorEstrella(futbolista):- 

meteGolesPorPartido(fubtolista,_,cantGoles), esMayorAlPromedio(cantGoles,promedio), cantGoles is promedio * 2.

cobraAyuda(Persona):-
	noTieneMama(Persona),
	not(esRico(Persona)).

esSaludable(Persona):- come(Persona,Alimento), esVerdura(Alimento).


Pruebas:
?  esSaludable(pepe,radicheta)
?  noEsFeliz(pepe)


El predicado 2 representa la relación que define un hecho, el cual se usa para evaluar la condición en un planteo de problema.
El predicado 7 representa un conjunto de hechos que inicialmente representa una conclusión “si :=”. Este es seguido por una o mas relaciones de condición.

La inversibilidad es recibir como parámetro una incógnita. Por ejemplo si :
esTierno(Persona):- forall(dulce(Alimento), leGusta(Persona, Alimento)).

si le paso una incógnita tal que esTierno(X), la primera consulta va  a ser leGusta(Persona,Alimento) y por cada una de las consultas tiene que verificar esDulce().
El primer resultado van a ser todos los pares (persona,alimento) relacionados por leGusta. Entonces, el forall sólo se va a verificar si cualquier cosa que le guste a alguien, no importa a quién, es dulce.

Las diferencias que encontré fueron que: en el lógico no hay tipos, a diferencia del funcional los datos son finitos y tienen funciones de primer orden y la que creo que es más importante es que en este paradigma se especifica qué debe hacer el programa y no cómo hacerlo.
