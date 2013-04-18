define [
	'jquery'
	'backbone'
	'utils/user_collection_cache'
	'view/people'
	'view/user_info'
	'view/user_edit'
	'view/page404'
	], ( $, Backbone, userCollectionCache, AppViewPeople, AppViewUserInfo, AppViewUserEdit, AppViewPage404 ) ->
		'use strict'

		Backbone.Router.extend
			routes :
				''              : 'index'
				'users'         : 'index'
				'info/user/:id' : 'info'
				'edit/user/:id' : 'edit'
				'*path'         : 'page404'

			index : () ->
				$('#userInfo').remove()

				if !$('#userList').length
					userCollectionView = new AppViewPeople
						collection : userCollectionCache

					$('body').html userCollectionView.render().el

				Backbone.trigger 'deselect:all'

			info : ( id ) ->
				availability = userCollectionCache.some( ( userModel ) ->

					if userModel.get('id') == + id

						userInfoView = new AppViewUserInfo
							model : userModel

						@index()

						userModel.trigger 'select:current'

						$('body').append userInfoView.render().el

						true
				@ )

				if !availability
					@page404()

			edit : ( id ) ->
				availability = userCollectionCache.some( ( userModel ) ->

					if userModel.get('id') == + id

						userInfoEdit = new AppViewUserEdit
							model : userModel

						@index()

						userModel.trigger 'select:current'

						$('body').append userInfoEdit.render().el

						true
				@ )

				if !availability
					@page404()

			page404 : () ->
				new AppViewPage404().render()
