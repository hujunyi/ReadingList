class ReadingList.Routers extends Backbone.Router
  routes:
    '': 'index'
    'books/:id': 'show'

  initialize: ->
    @collection = new ReadingList.Collections.Books()
    @collection.fetch({reset: true})
    @genres = new ReadingList.Collections.Genres()
    @genres.fetch({reset:true})

  index: ->
    booksView = new ReadingList.Views.BooksIndex(collection: @collection)
    $('#books').html(booksView.render().el)
    genresView = new ReadingList.Views.GenresIndex(collection: @genres)
    $('#genres').html(genresView.render().el)

  show:(id)->
    @model = @collection.get(id)
    nav = "<li class='active'>#{@model.get('title')}</li>"
    view = new ReadingList.Views.Book(model: @model)
    $('#books').html(view.render().el)
    $('.breadcrumb').append(nav)

