'use strict';

define ['backbone', 'router/router'], ( Backbone, AppRouter ) ->
	new AppRouter()

	Backbone.history.start()
