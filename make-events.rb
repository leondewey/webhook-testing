require 'securerandom'

5.times do
  author = "#{SecureRandom.hex[0..5]} <#{SecureRandom.hex[0..5]}@example.com>"
  puts author
  `touch ./random/#{SecureRandom.hex}`
  `git add -A; git commit -m "Commit message: #{SecureRandom.hex}" --author="#{author}"; git push`
end
