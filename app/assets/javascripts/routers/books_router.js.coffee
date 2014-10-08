class ReadingList.Routers extends Backbone.Router
  routes:
    '': 'index'
    'books/:id': 'show'
    'genres/:id': 'showGenre'

  initialize: ->
    @genres = new ReadingList.Collections.Genres()
    @genres.fetch({reset:true})
    @books = new ReadingList.Collections.Books()
    @books.fetch({reset: true})

  index: ->
    booksView = new ReadingList.Views.BooksIndex({collection: @books,genres: @genres})
    $('#books').append(booksView.render().el)
    genresView = new ReadingList.Views.GenresIndex(collection: @genres)
    $('#genres').html(genresView.render().el)

  show:(id)->
    @model = @books.get(id)
    nav = "<li class='active'>#{@model.get('title')}</li>"
    view = new ReadingList.Views.Book(model: @model)
    $('#books').html(view.render().el)
    $('.breadcrumb').append(nav)

  showGenre: ->


