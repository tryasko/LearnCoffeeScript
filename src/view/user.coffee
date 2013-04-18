'use strict';

define ['jquery', 'underscore', 'backbone'], ( $, _, Backbone ) ->
	#  Вьюха для одного пользователя

	Backbone.View.extend

		tagName : 'li',


		template : _.template $('#userTemplate').html()


		initialize : () ->
			@render()
			@model.on 'change:name', @render, @
			@model.on 'select:current', @select, @


		render : () ->
			@$el.html( this.template
				data : @model.toJSON()
			)


		select : () ->
			@$el.addClass 'selected'
