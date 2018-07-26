10.times do	
	city = City.create(city_name: Faker::Address.city)
end

10.times do	
	dogsitter = Dogsitter.create(first_name: Faker::BackToTheFuture.character, 
	last_name: Faker::BreakingBad.character, 
	city_id: Faker::Number.between(City.first.id, City.last.id))
end

10.times do	
	dog = Dog.create(first_name: Faker::BreakingBad.episode, 
	city_id: Faker::Number.between(City.first.id, City.last.id))
end

10.times do	
	stroll = Stroll.create(dogsitter_id: Faker::Number.between(Dogsitter.first.id, Dogsitter.last.id), 
		dog_id: Faker::Number.between(Dog.first.id, Dog.last.id))
end

