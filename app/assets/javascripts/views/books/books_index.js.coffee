class ReadingList.Views.BooksIndex extends Backbone.View

  template: JST['books/index']
  
  initialize: (options)->
    console.log options
    console.log @genres
    @collection.on('reset',@render,@)

  render: ->
    $(@el).html(@template())
    @collection.each(@appendBook)
    @

  appendBook: (book)->
    console.log @
    view = new ReadingList.Views.Book({model: book,genres: @genres})
    @$('#books-list').append(view.render().el)



