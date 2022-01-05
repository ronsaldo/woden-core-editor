Class {
	#name : #WDELevelEditorSession,
	#superclass : #Object,
	#instVars : [
		'gameSettings',
		'level',
		'selection',
		'statusMessage',
		'gridSize'
	],
	#category : #'WodenEditor-Model-Session'
}

{ #category : #accessing }
WDELevelEditorSession >> gameSettings [
	^ gameSettings
]

{ #category : #accessing }
WDELevelEditorSession >> gameSettings: anObject [

	gameSettings := anObject.
	level value ifNotNil: [ :lv | lv gameSettings: gameSettings ]
]

{ #category : #accessing }
WDELevelEditorSession >> gridSize [
	^ gridSize value
]

{ #category : #accessing }
WDELevelEditorSession >> gridSize: newValue [
	gridSize value: ((newValue roundTo: self gridSizeGranularity) max: self gridSizeGranularity)
]

{ #category : #accessing }
WDELevelEditorSession >> gridSizeGranularity [
	^ 0.001
]

{ #category : #initialization }
WDELevelEditorSession >> initialize [
	super initialize.
	gameSettings := WDEGameSettings default.
	level := nil asValueHolder.
	statusMessage := '' asValueHolder.
	selection := WDELevelEditorSelection empty asValueHolder.
	gridSize := 10.0 asValueHolder.
]

{ #category : #accessing }
WDELevelEditorSession >> level [
	^ level value
]

{ #category : #accessing }
WDELevelEditorSession >> level: aLevel [
	aLevel gameSettings: gameSettings.
	level value: aLevel.
]

{ #category : #accessing }
WDELevelEditorSession >> selection [
	^ selection value
	
]

{ #category : #accessing }
WDELevelEditorSession >> selection: newSelection [
	selection value: newSelection.

]

{ #category : #accessing }
WDELevelEditorSession >> statusMessage [
	^ statusMessage value
]

{ #category : #accessing }
WDELevelEditorSession >> statusMessage: newMessage [
	statusMessage value: newMessage
]

{ #category : #enumerating }
WDELevelEditorSession >> whenLevelChangedDoNow: aBlock [
	aBlock value: self level
]

{ #category : #enumerating }
WDELevelEditorSession >> whenSelectionChangedDo: aBlock [
]

{ #category : #enumerating }
WDELevelEditorSession >> whenStatusMessageChangedDo: aBlock [
]