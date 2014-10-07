class ReadingList.Views.Book extends Backbone.View
  template: JST['books/book']

  tagName: 'li'
  className: 'row'

  events:
    'click h3': 'showBook'

  render: ->
    $(@el).html(@template(book: @model))
    @

  showBook: (e)->
    e.preventDefault()
    Backbone.history.navigate("books/#{@model.get('id')}",true)
