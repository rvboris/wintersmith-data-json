module.exports = (wintersmith, callback) ->

  class JsonDataPage extends wintersmith.defaultPlugins.JsonPage
    getFilename: ->
      @_filename

  wintersmith.registerContentPlugin 'pages', '**/data.json', JsonDataPage

  callback()