class ReadingList.Views.Book extends Backbone.View
  template: JST['books/book']

  className: 'row'

  events:
    'click h3': 'showBook'

  initialize: (options)->
    #console.log options
    #console.log options.genres
    #@genre = new ReadingList.Models.Genre({id: @model.get('genre_id')})
    #@genre.on('change',@showGenre,@)
    #@genre.fetch()

  render: ->
    $(@el).html(@template(book: @model))
    @

  showBook: (e)->
    e.preventDefault()
    Backbone.history.navigate("books/#{@model.get('id')}",true)

  showGenre: ->
    #@$('#genre_name').text("#{@genre.get('name')}")
    @$('#genre_name').text("123")
