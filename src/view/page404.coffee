define ['jquery', 'underscore', 'backbone'], ( $, _, Backbone ) ->
	'use strict'

	#  Вьюха для 404 страницы

	Backbone.View.extend
		id : 'page404'

		template : _.template $('#page404Template').html()

		render : () ->
			$('body').html @template()
