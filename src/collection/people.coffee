'use strict';

define ['backbone', 'model/user'], ( Backbone, AppModelUser ) ->
	#  Коллекция всех пользователей

	Backbone.Collection.extend
		model : AppModelUser
