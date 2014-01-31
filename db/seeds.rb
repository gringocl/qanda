# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'ffaker'

def sample_text
  (1..10).map{|i|"<p>#{Faker::HTMLIpsum.fancy_string}</p>"}.join
end

15.times do
  User.new.tap do |u|
    u.email = Faker::Internet.email
    u.password = 'password'
    u.name = Faker::Name.name
    u.save!
  end
end

50.times do
  Question.new.tap do |q|
    q.title = Faker::HipsterIpsum.sentence
    q.body = sample_text
    q.answer = sample_text
    q.save!
  end
end

300.times do
  user = User.order( 'RANDOM()' ).first
  question = Question.order( 'RANDOM()' ).first
  user.questions << question
end
