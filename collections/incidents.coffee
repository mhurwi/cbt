@Incidents = new Meteor.Collection("incidents")

Meteor.methods
  createIncident: (incidentAttributes)->
    user = Meteor.user()
    incident = _.extend(_.pick(incidentAttributes, "description"),
      userId = user._id if !!user
      author = user.username if !!user
      submitted: new Date().getTime()
    )

    incidentId = Incidents.insert(incident)
    incidentId


