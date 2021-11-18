noTieneMama(pepe)
esDulce(caramelo)
come(pepe,radicheta)
votoUnPeronista(roberto,4,peron)
meteGolesPorPartido(palermo,boca,4)
esVerdura(lechuga)
come(roberto,lechuga)
esMayorAlPromedio(4,2)


noEsFeliz(Chico) :-
	noTieneMama(Chico),	
	forall(come(Chico,Alimento), not(esDulce(Alimento)))

esPeronista(votante) :- votoUnPeronista(votante,cantVotos,_) , cantVotos > 10	

jugadorEstrella(futbolista):- 

meteGolesPorPartido(fubtolista,_,cantGoles), esMayorAlPromedio(cantGoles,promedio), cantGoles is promedio * 2.

cobraAyuda(Persona):-
	noTieneMama(Persona),
	not(esRico(Persona)).

esSaludable(Persona):- come(Persona,Alimento), esVerdura(Alimento).



?  esSaludable(pepe,radicheta)
?  noEsFeliz(pepe)


