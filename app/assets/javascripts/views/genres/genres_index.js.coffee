class ReadingList.Views.GenresIndex extends Backbone.View

  template: JST['genres/index']
  
  initialize: ->
    @collection.on('reset',@render,@)

  render: ->
    $(@el).html(@template())
    @collection.each(@appendGenre)
    @

  appendGenre: (genre)->
    view = new ReadingList.Views.Genre(model: genre)
    @$('#genres-list').append(view.render().el)




