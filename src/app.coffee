define ['backbone', 'router/router'], ( Backbone, AppRouter ) ->
	'use strict'

	new AppRouter()

	Backbone.history.start()
