Class {
	#name : #StochasticAcceptanceProportionalSelection,
	#superclass : #ProportionalSelection,
	#instVars : [
		'maxValue'
	],
	#category : #'Kendrick-Core-Simulations'
}

{ #category : #accessing }
StochasticAcceptanceProportionalSelection >> at: index put: value [
	| lastX |
	lastX := frequencies at: index.
	maxValue := maxValue max: value.
	lastX == maxValue & (value < lastX)
		ifTrue: [ maxValue := frequencies max asFloat ].
	frequencies at: index put: value
]

{ #category : #initialization }
StochasticAcceptanceProportionalSelection >> initialize: size [  
	
	super initialize: size.
	maxValue := 0
]

{ #category : #'as yet unclassified' }
StochasticAcceptanceProportionalSelection >> normalize [ 
	"nothing"
]

{ #category : #acccessing }
StochasticAcceptanceProportionalSelection >> sample [
	| x i |
	x := Random new next.
	i := (frequencies size * x) asInteger.
	[ i > 0 ]
		whileTrue: [ x >= ((frequencies at: i) quo: maxValue)
				ifTrue: [ ^ i ] ]
]