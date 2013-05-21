Template.incidentOriginalThoughts.helpers
  currentIncident: ->
    Incidents.findOne(Session.get("currentIncidentId"))