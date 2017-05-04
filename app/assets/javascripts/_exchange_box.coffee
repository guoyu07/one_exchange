$(document).ready ->
  $('#quantity').keyup ->
    obtem_cotacao()
  $('#currency').change ->
    obtem_cotacao()
  $('#currency_destination').change ->
    obtem_cotacao()
  $('#change_currency').click ->
    change_currency()

obtem_cotacao = ->
  if $('form').attr('action') == '/exchange'
   $.ajax '/exchange',
    type: 'POST'
    dataType: 'json'
    data: {
            currency: $("#currency").val(),
            currency_destination: $("#currency_destination").val(),
            quantity: $("#quantity").val()
          }
    error: (jqXHR, textStatus, errorThrown) ->
      alert textStatus
    success: (data, text, jqXHR) ->
      $('#result').val(data.value)
  return false;

change_currency = ->
  current = $("#currency").val()
  $("#currency").val($("#currency_destination").val())
  $("#currency_destination").val(current)
  obtem_cotacao()
