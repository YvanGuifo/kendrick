as yet unclassified
initialize
	super initialize.
	parameters := Dictionary new.
	temporalParameters := Dictionary new.
	equations := OrderedCollection new.
	"population := KEPopulation new."
	populationBuilder := KEPopulationBuilder new.
	compartmentSymbols := Dictionary new.
	compartments := Dictionary new.