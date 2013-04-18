'use strict';

define ['jquery', 'underscore', 'backbone'], ( $, _, Backbone ) ->
	#  Вьюха для вывода информация о пользователе

	Backbone.View.extend

		id : 'userInfo'

		template : _.template $('#userInfoTemplate').html()

		render : () ->
			@$el.html( @template
				data : this.model.toJSON()
			)

			@

