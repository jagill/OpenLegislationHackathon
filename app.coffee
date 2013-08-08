if Meteor.isClient
  Template.officialList.helpers
    officials: ->
      Officials.find()
