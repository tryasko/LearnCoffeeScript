define ['jquery', 'underscore', 'backbone'], ( $, _, Backbone ) ->
	'use strict'

	#  Вьюха для одного пользователя

	class View extends Backbone.View
		tagName : 'li'

		template : _.template $('#userTemplate').html()

		initialize : ->
			@render()
			@listenTo @model, 'change:name', @render, @
			@listenTo @model, 'select:current', @select, @

		render : ->
			@$el.html( @template
				data : @model.toJSON()
			)

			@

		select : ->
			@$el.addClass 'selected'
