accessing
getNbIndividuals
	"This function will return the number of all individuals in population"
	|totalNbIndividuals|
	totalNbIndividuals := 0.
	compartments do: [ :each|
		totalNbIndividuals := totalNbIndividuals + (each getNbIndividuals) 
		 ].
	^ totalNbIndividuals
	