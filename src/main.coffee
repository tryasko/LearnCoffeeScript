'use strict'

requirejs.config
	urlArgs : + new Date()

	paths : 
		'jquery'     : 'lib/jquery'
		'underscore' : 'lib/underscore'
		'backbone'   : 'lib/backbone'
		'validator'  : 'lib/backbone-validation-amd'

	shim : 
		'jquery' : 
			exports : '$'

		'underscore' : 
			exports : '_'

		'backbone' : 
			deps : [
				'jquery'
				'underscore'
			]
			exports : 'Backbone'

		'validator' :
			deps : [
				'backbone'
			]
			exports : 'Validator'

requirejs ['app']
