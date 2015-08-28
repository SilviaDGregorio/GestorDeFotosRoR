# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if User.all.empty?
	User.create(:name=>"Silvia",:blocked=>"0",:email => "silviadegm@gmail.com", :email_confirmation => "silviadegm@gmail.com", :password => "silvia", :password_confirmation => "silvia")
end