class ReadingList.Views.Genre extends Backbone.View
  template: JST['genres/genre']

  tagName: 'li'

  render: ->
    $(@el).html(@template(genre: @model))
    @
