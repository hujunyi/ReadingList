class ReadingList.Views.Genre extends Backbone.View
  template: JST['genres/genre']

  tagName: 'li'

  events: 
    'click a': 'showGenre'

  render: ->
    $(@el).html(@template(genre: @model))
    @

  showGenre: (e)->
    e.preventDefault()
    alert @model.get('name')
