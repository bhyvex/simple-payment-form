Template.payment_form.charge_amount = ->
  Session.get('charge_amount')

Template.payment_form.card_error = ->
  Session.get('card_error')


Template.payment_form.events =
  'click button': (evt) ->
    evt.preventDefault()
    formData = $('form').serializeJSON()
    Meteor.call 'createStripeToken', formData

    # Meteor.call('createNewCharge')
    # Call some sort of Charge creator
    #  Create stripe token
    #  Create stripe charge
    #  Create new charge in Charges collection
    # createStripeToken()
