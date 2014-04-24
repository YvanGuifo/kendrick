tests
testNumberOfEventOfMultiHostsModel
	|model simulator eventList dsdt didt|
	model := KEModel2 new.
	dsdt := 'S[i]:t=mu[i]*N[i]-sum(j, beta[i][j]*I[j])*S[i]-mu[i]*S[i]' parseAsAnEquation.
	didt := 'I[i]:t=sum(j, beta[i][j]*I[j])*S[i]-(mu[i]+v)*I[i]' parseAsAnEquation.
	model addEquation: dsdt.
	model addEquation: didt.
	simulator := (KESimulator new) model: model.
	eventList := simulator generateEvents.
	self assert: 4 equals: eventList size