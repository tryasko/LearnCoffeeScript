define ['jquery', 'underscore', 'backbone'], ( $, _, Backbone ) ->
	'use strict'

	#  Вьюха для вывода информация о пользователе

	class View extends Backbone.View
		id : 'userInfo'

		template : _.template $('#userInfoTemplate').html()

		render : ->
			@$el.html( @template
				data : @model.toJSON()
			)

			@
