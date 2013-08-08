###
# title
# name
# responsibilities: [ {description, citation} ]
###

@Officials = new Meteor.Collection 'officials'


if Meteor.isServer
  Meteor.startup ->
    Officials.remove {}
    for datum in initialData
      Officials.insert datum
