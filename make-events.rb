require 'securerandom'

100.times do
  `touch ./random/#{SecureRandom.hex}`
  `git add -A; git commit -m "Commit message: #{SecureRandom.hex}"; git push`
end
