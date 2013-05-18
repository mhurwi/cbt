Meteor.Router.add
  "/": "incidentsList"
  "/new": "incidentNew"
  "/incidents/:id":
    to: "postPage"
    and: (id)->
      Session.set "currentIncidentId", id