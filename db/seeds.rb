# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

assignments = Assignment.create([{ title: 'Shakespeare Essay', completed: 'true', question: 'Dude! How does Shakespeare prepare me for the real world?', subject: 'Literature' }, 
   
    { title: 'Anatomy Diagram', completed: 'false', question: 'Where is the pharynx located?', subject: 'Anatomy & Physiology' } ])


    
    assignments = Assignment.create([{ title: 'Shakespeare Essay', completed: 'true', question: 'Dude! How does Shakespeare prepare me for the real world?', subject: 'Literature' }, 
   
        { title: 'Anatomy Diagram', completed: 'false', question: 'Where is the pharynx located?', subject: 'Anatomy & Physiology' } ])
    
    puts "completed seeding"
