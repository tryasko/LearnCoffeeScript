define ['backbone', 'model/user'], ( Backbone, AppModelUser ) ->
	'use strict'

	#  Коллекция всех пользователей

	class Collection extends Backbone.Collection
		model : AppModelUser
