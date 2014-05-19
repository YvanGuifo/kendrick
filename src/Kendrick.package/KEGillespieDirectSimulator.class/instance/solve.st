as yet unclassified
solve
	|timeSeries t previousT countStep|
	timeSeries := OrderedCollection new.
	self initializeResult.
	t := tMin.
	previousT := t.
	countStep := 0.
	[ t < tMax ] whileTrue: [ 
		|delta_T|
		model addTemporalParameter: #t value: t.
		delta_T := self doGillespieIterate.
		countStep := countStep + 1.
		delta_T = 0 ifTrue: [ 
			self prepareData: timeSeries.
			^ countStep ].
		t := t + delta_T.
		t > (previousT + step) ifTrue: [ 
			self updateResult.
			timeSeries add: t.
			previousT := t.
			 ].
		 ].
	self prepareData: timeSeries.
	^ countStep