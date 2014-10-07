class ReadingList.Views.BooksIndex extends Backbone.View

  template: JST['books/index']
  
  initialize: ->
    @collection.on('reset',@render,@)

  render: ->
    $(@el).html(@template())
    @collection.each(@appendBook)
    @

  appendBook: (book)->
    view = new ReadingList.Views.Book(model: book)
    @$('#books').append(view.render().el)



