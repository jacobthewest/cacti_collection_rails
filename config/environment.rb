# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

ActiveSupport::Inflector.inflections(:en) do |inflect|
    inflect.irregular 'cactus', 'cacti'
    inflect.irregular 'octopus', 'octopi'
end