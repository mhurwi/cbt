Template.incidentPage.helpers
  currentIncident: ->
    Incidents.findOne(Session.get("currentIncidentId"))