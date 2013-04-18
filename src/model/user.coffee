'use strict';

define ['backbone'], ( Backbone ) ->

	Backbone.Model.extend

		defaults :
			sex : 'Мужской'

		validate : ( attrs ) ->
			errors = []

			if !/^[А-Яа-я]{1,}$/.test attrs.name
				errors.push 'Введите свое имя кириллицей!'

			if attrs.age < 10 ||  attrs.age > 100
				errors.push 'Введите цифрами Ваш реальный возраст!'

			if !/^[А-Яа-я]{1,}$/.test attrs.job
				errors.push 'Введите профессию кириллицей!'

			if attrs.sex != 'Мужской' && attrs.sex != 'Женский'
				errors.push 'Выберите правильно пол!'

			if errors.length
				errors
