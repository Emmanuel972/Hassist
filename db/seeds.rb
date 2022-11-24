puts "Cleaning database..."
Step.destroy_all

puts "Creating steps..."
10.times do
  step = Step.new(
    name:    Faker::Games::WorldOfWarcraft.hero,
    content: Faker::Games::WorldOfWarcraft.quote
  )
  step.save!
end
puts 'steps Finished!'
