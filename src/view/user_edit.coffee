define ['jquery', 'underscore', 'backbone'], ( $, _, Backbone ) ->
	'use strict'

	#  Вьюха для редактирования информации о пользователе

	class View extends Backbone.View
		id : 'userInfo'

		template : _.template $('#userInfoEditTemplate').html()

		render : ->
			@$el.html( @template
				data : @model.toJSON()
			)

			@

		events :
			'click .save' : 'saveInfo'

		saveInfo : ->
			newInfo =
				name : @$('.user-name').val()
				age  : parseInt @$('.user-age').val(), 10
				job  : @$('.user-job').val()
				sex  : @$('.user-sex').val()

			isErrorValidate = @model.validate newInfo

			if isErrorValidate
				@showErrorValidate isErrorValidate
			else
				@model.set
					name : newInfo.name
					age  : newInfo.age
					job  : newInfo.job
					sex  : newInfo.sex

				window.location.hash = '#info/user/' + @model.get('id')

		showErrorValidate : ( errors ) ->
			for error in errors
				alert error
