Meteor.Router.add
  "/": "incidentsList"

  "/new": "incidentNew"

  "/incidents/:id/original-thoughts":
    to: "incidentOriginalThoughts"
    and: (id)->
      Session.set "currentIncidentId", id


  # to review a completed incident
  "/incidents/:id":
    to: "incidentPage"
    and: (id)->
      Session.set "currentIncidentId", id