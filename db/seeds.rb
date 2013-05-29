# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



Questions.delete_all
open("quiz.txt") do |quizes|
	quizes.read.each_line do |quiz|
		question, answer = quiz.chomp.split("|")
		Questions.create!(:question => question, :answer => answer)
	end
end