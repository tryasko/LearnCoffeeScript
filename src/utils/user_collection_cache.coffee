define ['collection/people', 'data/users'], ( AppCollectionPeople, AppDataUsers ) ->
	'use strict'

	new AppCollectionPeople AppDataUsers
