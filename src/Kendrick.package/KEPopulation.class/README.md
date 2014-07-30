A KEPopulation is a population categoried in compartments  (see class KECompartment for more details) in which the disease is spreading.

Instance Variables
	compartmentNames:		<OrderedCollection>
	compartments:		<OrderedCollection>
	indList:		<OrderedCollection>
	parent:		<KEPopulation>
	populationID:		<OrderedCollection>
	rates:		<OrderedCollection>

compartmentNames
	- A list of compartment names of the epidemiological model

compartments
	- A list of compartments in the population

indList
	- A list of individuals (instances of KEIndividual class)

parent
	- Each compartment in system is belong to one population, so it is necessaire to know its parent (the population that contains it). By initialisation, the parent of the population is itself.

populationID
	- Each population has an identification to distinguer each other in the case of multi-populations. The populationID is an Array of which each element is the ID of its parents and itself. The root population has an ID equal to 0. Each its subpopulation has ID 1, 2, ...

rates
	- For improving the speed of simulator, we store the event rates of each population in the variable rates so that the simulator would easily access to.