Class {
	#name : #TWTestRequest,
	#superclass : #TWMessage,
	#instVars : [
		'testClassName'
	],
	#category : #'TestWorkers-Connector'
}

{ #category : #'dr-test' }
TWTestRequest >> drTestsBrowse [
	(self class environment at: testClassName) browse
]

{ #category : #'dr-test' }
TWTestRequest >> drTestsName [
	
	^ testClassName 
]

{ #category : #converting }
TWTestRequest >> execute: client [

	client runTestMessage: self
]

{ #category : #converting }
TWTestRequest >> queueName [

	^ 'testRequest'

]

{ #category : #accessing }
TWTestRequest >> testClassName [
	^ testClassName
]

{ #category : #accessing }
TWTestRequest >> testClassName: anObject [
	testClassName := anObject
]
