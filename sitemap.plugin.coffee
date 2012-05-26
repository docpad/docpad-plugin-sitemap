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
  _ = require('underscore')
  sm = require('sitemap')

  # Define Plugin
  class SitemapPlugin extends BasePlugin
    # Plugin name
    name: 'sitemap'

    # --------------
    # Configuration values

    # default values
    config:
      sitemapPath: "" # populated in the constructor
      # Default values
      # the following defaults are for the whole sitemap.xml file
      defaultsGlobal:
        hostname: "http://example.com" # Obviously need to be changed
        cachetime: 600000 # 600 seconds cache period
      # the following defaults are per-document
      defaultsPerDoc:
        changefreq: 'weekly'
        priority: 0.5

    # The sitemap being built, to be passed to sitemap.js
    sitemap:
      hostname: null
      cachetime: null
      urls: []


    # --------------
    # Constructor

    constructor: ->
      super
      # filesPaths[1] points to 'src/public', which we want here
      @config.sitemapPath = path.normalize "#{@docpad.config.filesPaths[1]}/sitemap.xml"


    # --------------
    # Helpers

    # Create a document sitemap data
    createDocMap: (config,templateData,file) ->
      # Prepare
      logger = @docpad.logger



      # Return
      docMap

    # --------------
    # Docpad events

    # Create the sitemap.xml site-wide data at the very beginning
    generateBefore: ({}, next) ->
      # Prepare
      config = @config
      sitemap = @sitemap

      # Creates the site-wide sitemap data
      _.extend sitemap, config.defaultsGlobal

      # Done, let DocPad proceed
      next?()

    # Populate the sitemap.xml data for each document
    renderDocument: (opts, next) ->
      # Prepare
      {extension,templateData,file} = opts
      config = @config
      logger = @docpad.logger
      sitemap = @sitemap

      # Only HTML documents are of interest for a sitemap
      # todo: figure out how to reliably differenciate between document from other files (layouts, assets etc.)
      if extension in ['html']
        # Merge document's sitemap data and default values into document's metadata
        templateData = _.extend templateData, config.defaultsPerDoc, templateData

        # Create document's data
        docMap =
          url: file.get 'url'
          changefreq: templateData.changefreq
          priority: templateData.priority

        logger.log "debug", "sitemap.xml docMap => url: #{docMap.url} - changefreq: #{docMap.changefreq} - priority: #{docMap.priority}"

        # Add document data to site-wide map
        sitemap.urls.push docMap

      # Done, let DocPad proceed
      next?()

    # Write the sitemap.xml file in 'src/public' before DocPad moves it to 'out'
    # todo: figure out if the writing should be done sync or async
    writeBefore: ({}, next) ->
      # Prepare
      config = @config
      logger = @docpad.logger
      sitemap = @sitemap

      logger.log "debug", JSON.stringify sitemap, null, 4

      # Create the sitemap.xml file if it doesn't exist
      # todo: figure out what mode to use
#      fs.openSync config.sitemapPath, 'w+', 0664

      # Create a sitemap.js object
      sitemap = sm.createSitemap(sitemap);

      logger.log "debug", sitemap.toString()

      # Fill the sitemap.xml file with data
      balUtil.writeFile config.sitemapPath, sitemap.toString(), (err) ->
        # Check
        return next?(err)  if err

        # Ensure proper files permissions
        # todo: figure out what mode to use, and why previous permission are not kept
#        fs.chmodSync config.sitemapPath, 664

        logger.log 'debug', "Wrote the rendered file: #{config.sitemapPath}"

        # Done, let DocPad proceed
        next?()
