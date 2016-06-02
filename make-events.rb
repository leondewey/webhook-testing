require 'securerandom'
require 'faker'

1.times do
  author = "#{Faker::Name.name} <#{Faker::Internet.email}>"
  msg = Faker::Lorem.sentence
  
  `touch ./random/#{SecureRandom.hex}`
  `git add -A; git commit -m "#{msg}" --author="#{author}"; git push`
end
