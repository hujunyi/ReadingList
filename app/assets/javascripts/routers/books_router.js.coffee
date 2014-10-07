class ReadingList.Routers extends Backbone.Router
  routes:
    '': 'index'
    'books/:id': 'show'

  initialize: ->
    @collection = new ReadingList.Collections.Books()
    @collection.fetch({reset: true})

  index: ->
    view = new ReadingList.Views.BooksIndex(collection: @collection)
    $('#container').html(view.render().el)

  show:(id)->
    @model = @collection.get(id)
    view = new ReadingList.Views.Book(model: @model)
    $('#container').html(view.render().el)

