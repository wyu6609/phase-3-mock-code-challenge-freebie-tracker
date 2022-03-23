puts 'clearing old data'
Company.destroy_all
Dev.destroy_all
Freebie.destroy_all

puts 'Creating companies...'
Company.create(name: 'Google', founding_year: 1998)
Company.create(name: 'Facebook', founding_year: 2004)
Company.create(name: 'Dunder Mifflin', founding_year: 2002)
Company.create(name: 'Enron', founding_year: 1995)

puts 'Creating devs...'
Dev.create(name: 'Rick')
Dev.create(name: 'Morty')
Dev.create(name: 'Mr. Meseeks')
Dev.create(name: 'Gazorpazop')

puts 'Creating freebies...'

# ***************************************************************
# * TODO: create freebies! Remember, a freebie belongs to a dev *
# * and a freebie belongs to a company.                         *
# ***************************************************************
# Create freebies Here
20.times do
  Freebie.create(
    item_name: Faker::Name.name,
    value: Faker::Number.between(from: 0, to: 100),
    company_id: Company.ids.sample,
    dev_id: Dev.ids.sample,
  )
end
puts 'Seeding done!'
