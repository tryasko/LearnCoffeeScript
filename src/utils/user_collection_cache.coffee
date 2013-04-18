'use strict';

define ['collection/people', 'data/users'], ( AppCollectionPeople, AppDataUsers ) ->
	new AppCollectionPeople AppDataUsers
