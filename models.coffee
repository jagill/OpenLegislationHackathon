###
# title
# name
# responsibilities: [ {description, citation} ]
###

@Officials = new Meteor.Collection 'officials'


if Meteor.isServer
  Meteor.startup ->
    if Officials.find().count() == 0
      Officials.insert
        title: "Comptroller"
        name: 'Fred Johnson'
        responsibilities: [
          {description: 'Can capture cats', citation: 'Code V Section 1.3(a) ii'},
          {description: 'Can remove offending muffins', citation: 'Fire Code III Section 8.A 1.4'}
        ]

      Officials.insert
        title: 'Council Abrogator'
        name: 'Scarlett Olafsdottir'
        responsibilities: [
          {description: 'Can enforce parking restrictions', citation: 'Code V Section 1.3(a) ii'},
          {description: 'Can meter awesome justice', citation: 'Fire Code III Section 8.A 1.4'},
          {description: 'Can bring on the strawberries', citation: 'Bakery Code I Section 8.A 1.4'}
        ]
