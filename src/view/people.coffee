define ['jquery', 'underscore', 'backbone', 'view/user'], ( $, _, Backbone, AppUserView ) ->
	'use strict'

	#  Вьюха для списка(коллекции) пользователей

	class View extends Backbone.View
		tagName : 'ul'

		id : 'userList'

		initialize : ->
			Backbone.on 'deselect:all', @deSelectAll, @

		render : ->
			@collection.each( ( userModel ) ->
				userView = new AppUserView
					model : userModel

				@$el.append userView.el
			@ )

			@

		deSelectAll : ->
			@$('.selected').removeClass 'selected'
