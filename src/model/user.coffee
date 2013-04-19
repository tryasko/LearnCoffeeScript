define ['backbone'], ( Backbone ) ->
	'use strict'

	class Model extends Backbone.Model
		defaults :
			sex : 'Мужской'

		validate : ( attrs ) ->
			errors = []

			if not /^[А-Яа-я]{1,}$/.test attrs.name
				errors.push 'Введите свое имя кириллицей!'

			if attrs.age < 10 or attrs.age > 100
				errors.push 'Введите цифрами Ваш реальный возраст!'

			if not /^[А-Яа-я]{1,}$/.test attrs.job
				errors.push 'Введите профессию кириллицей!'

			if attrs.sex isnt 'Мужской' and attrs.sex isnt 'Женский'
				errors.push 'Выберите правильно пол!'

			if errors.length
				errors
