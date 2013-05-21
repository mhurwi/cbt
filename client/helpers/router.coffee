Meteor.Router.add
  "/": "incidentsList"

  "/new": "incidentNew"

  "/incidents/:id/feelings-before":
    to: "incidentFeelingsBefore"
    and: (id)->
      Session.set "currentIncidentId", id


  "/incidents/:id/original-thoughts":
    to: "incidentOriginalThoughts"
    and: (id)->
      Session.set "currentIncidentId", id

  "/incidents/:id/rational-thoughts":
    to: "incidentRationalThoughts"
    and: (id)->
      Session.set "currentIncidentId", id



  # to review a completed incident
  "/incidents/:id":
    to: "incidentPage"
    and: (id)->
      Session.set "currentIncidentId", id