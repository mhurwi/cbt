Template.incidentRationalThoughts.helpers
  currentIncident: ->
    Incidents.findOne(Session.get("currentIncidentId"))