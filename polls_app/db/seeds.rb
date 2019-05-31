# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Poll.destroy_all
Question.destroy_all
AnswerChoice.destroy_all
Response.destroy_all

ApplicationRecord.connection.reset_pk_sequence!('users')
ApplicationRecord.connection.reset_pk_sequence!('polls')
ApplicationRecord.connection.reset_pk_sequence!('questions')
ApplicationRecord.connection.reset_pk_sequence!('answer_choices')
ApplicationRecord.connection.reset_pk_sequence!('responses')

ApplicationRecord.transaction do
	puts 'Loading users...'
	require_relative 'data/user.rb'
	puts 'Loading polls...'
	require_relative 'data/poll.rb'
	puts 'Loading questions...'
  require_relative 'data/question.rb'
  	puts 'Loading answer choices...'
  require_relative 'data/answer_choice.rb'
  puts 'Loading responses...'
  require_relative 'data/response.rb'
  puts 'Done!'

end