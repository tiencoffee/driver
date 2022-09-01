App = m.comp do
	oninit: !->
		@user = void
		gapi.load \client @loadClient

	loadClient: !->
		data = await m.fetch \svcaccs/d00001.json \json
		data.scope = \https://www.googleapis.com/auth/drive
		await gapi.client.init data
		console.log 1

	view: ->

m.mount document.body, App
