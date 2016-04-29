require 'securerandom'

5.times do
  author = "#{SecureRandom.hex[0..5]} <#{SecureRandom.hex[0..5]}@example.com>"
  (1..5).to_a.sample.times do
    `touch ./random/#{SecureRandom.hex}`
    `git add -A; git commit -m "Commit message: #{SecureRandom.hex}" --author="#{author}"; git push`
  end
end
