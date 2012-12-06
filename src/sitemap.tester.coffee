# Export Plugin Tester
module.exports = (testers) ->
	# Define Plugin Tester
	class MyTester extends testers.RendererTester
		templateData:
			site:
				url: 'http://www.test.com'
		# Configuration
		docpadConfig:
			logLevel: 5
			enabledPlugins:
				'sitemap': true
				'eco': true