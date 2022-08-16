require 'allure-cucumber'

puts "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"
puts "dentro do env.rb"
puts "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"

AllureCucumber.configure do |config|
        config.results_directory = "/reports"
        config.clean_results_directory = true
        config.logging_level = Logger::INFO
        config.logger = Logger.new($stdout, Logger::DEBUG)
        config.environment = "staging"
        config.environment_properties = {
        custom_attribute: "Test"
    }
 
	config.categories = File.new("categories/my_custom_categories.json")
end

