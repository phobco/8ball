require 'yaml'

puts 'Choose your language: (1 - en, 2 - рус):' 

# English default if input is incorrect
locale = gets.to_i == 2 ? 'ru' : 'en'

greetings = YAML.load_file("locales/#{locale}.greetings.yml")
answers = YAML.load_file("locales/#{locale}.answers.yml")

puts greetings.sample
puts

sleep 2

puts answers.sample
