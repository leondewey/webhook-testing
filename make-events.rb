require 'securerandom'
require 'faker'

5.times do
  author = "#{Faker::Name.name} <#{Faker::Internet.email}>"
  msg = Faker::Company.catch_phrase

  `touch ./random/#{SecureRandom.hex}`
  `git add -A; git commit -m "#{msg}" --author="#{author}"; git push`
end
