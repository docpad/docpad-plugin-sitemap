# Export Plugin
module.exports = (BasePlugin) ->
	# Requires
	# Node modules
	path = require('path')
	fs = require('fs')
	url = require('url')
	util = require('util')

	# DocPad
	balUtil = require('bal-util')

	# External
	sm = require('sitemap')

	# Define Plugin
	class SitemapPlugin extends BasePlugin
		# Plugin name
		name: 'sitemap'

		# --------------
		# Configuration values

		# default values
		defaultConfig:
			cachetime: 10*60*1000 # 10 minute cache period
			changefreq: 'weekly'
			priority: 0.5
			hostname: 'http://www.change-me.com'

		# The sitemap being built, to be passed to sitemap.js
		sitemap:
			hostname: null
			cachetime: null
			urls: []

		# --------------
		# Docpad events

		# Create the sitemap.xml site-wide data at the very beginning,
		# so that DocPad copies it to the `out` directory

		writeAfter: (opts,next) ->
			docpad = @docpad
			defaultConfig = @defaultConfig
			config = @config
			sitemap = @sitemap
			templateData = docpad.getTemplateData()

			# create sitemap data object
			sitemapData = balUtil.extend sitemap, defaultConfig
			sitemapData = balUtil.extend sitemapData, config
			# set hostename from site url in document
			siteUrl = templateData.site.url
			sitemapData.hostname = siteUrl ? sitemapData.hostname
			# use global outPath for sitemap path
			sitemapPath = docpad.getConfig().outPath+'/sitemap.xml'

			docpad.log('debug', 'Creating sitemap in ' + sitemapPath)

			# loop over just the html files in the resulting collection
			docpad.getCollection('html').sortCollection(date:9).forEach (document) ->
				if (document.get('sitemap') is null or document.get('sitemap') isnt false) and (document.get('write') is null or document.get('write') isnt false) and document.get('ignored') isnt true
					# create document's sitemap data
					data =
						url: document.get('url')
						changefreq: document.get('changefreq') ? defaultConfig.changefreq
						priority: document.get('priority') ? defaultConfig.priority

					docpad.log "debug", data
					sitemapData.urls.push data

			# setup sitemap with our data
			sitemap = sm.createSitemap(sitemapData);

			# write the sitemap to file
			balUtil.writeFile sitemapPath, sitemap.toString(), (err) ->
				# bail on error? Should really do something here
				return next?(err)  if err

				docpad.log('debug', "Wrote the sitemap.xml file to: #{sitemapPath}")

				# Done, let DocPad proceed
				next?()