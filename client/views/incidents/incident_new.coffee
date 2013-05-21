Template.incidentNew.events
  'submit form': (e)->
    e.preventDefault()

    incident =
      description: $(e.target).find('[name=description]').val()

    Meteor.call 'createIncident', incident, (error, id)->
      if error
        alert(error.reason)
      else
        Meteor.Router.to 'incidentOriginalThoughts', id