Meteor.publish 'incidents', ->
  return Incidents.find()