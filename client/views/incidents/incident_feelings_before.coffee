Template.incidentFeelingsBefore.helpers
  currentIncident: ->
    Incidents.findOne(Session.get("currentIncidentId"))