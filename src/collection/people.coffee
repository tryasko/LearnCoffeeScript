define ['backbone', 'model/user'], ( Backbone, AppModelUser ) ->
	'use strict'

	#  Коллекция всех пользователей

	Backbone.Collection.extend
		model : AppModelUser
