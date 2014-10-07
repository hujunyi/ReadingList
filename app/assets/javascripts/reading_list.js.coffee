window.ReadingList =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new ReadingList.Routers()
    Backbone.history.start({pushState: true})
   
$(document).ready ->
  ReadingList.initialize()
