# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
project = Project.create!(name: "Shop list")
Task.create!(name: "Milk", project: project, completed: false)
Task.create!(name: "Water", project: project, completed: false)
Task.create!(name: "Cheese", project: project, completed: false)
Task.create!(name: "Bread", project: project, completed: false)
