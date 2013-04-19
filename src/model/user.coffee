define ['backbone', 'validator'], ( Backbone, Validator ) ->
	'use strict'

	class Model extends Backbone.Model
		defaults :
			sex : 'Мужской'

		validation :
			name : [
				{
					required : true
					msg : 'Поле "Имя" не может быть пустым!'
				}
				{
					pattern : /^[А-Яа-я]{1,}$/
					msg : 'Введите свое имя кириллицей!'
				}
			]
			age : [
				{
					required : true
					msg : 'Поле "Возраст" не может быть пустым!'
				}
				{
					range : [10, 100]
					msg : 'Вы не можете быть младше 10 и старше 100 лет!'
				}
			]
			job : [
				{
					required : true
					msg : 'Поле "Работа" не может быть пустым'
				}
				{
					pattern : /^[А-Яа-я]{1,}$/
					msg : 'Введите профессию кириллицей!'
				}
			]
			sex : [
				{
					required : true
					msg : 'Поле "Пол" не может быть пустым'
				}
				{
					oneOf : ['Мужской', 'Женский']
					msg : 'Выберите правильно пол!'
				}
			]
