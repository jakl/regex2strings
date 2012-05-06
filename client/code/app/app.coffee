regex2strings = require './regex2strings'

$('#demo').on 'submit', ->

  regex = $('#regex').val()

  $('#regex').val ''
  $('#strings').val ''
  $('#strings')[0].rows=1

  regex2strings.generate regex, '', (string)=>
      $('#strings').val $('#strings').val() + string + "\n"
      $('#strings')[0].rows++
