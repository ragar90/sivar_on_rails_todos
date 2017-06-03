require 'support/request_helper'
require 'factory_girl_rails'

RSpec.configure do |config|

  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.after :all do
    ActiveRecord::Base.subclasses.each do |subclass|
      subclass.delete_all
    end
  end
  config.shared_context_metadata_behavior = :apply_to_host_groups
  config.include Requests::JsonHelpers, type: :controller
  config.include FactoryGirl::Syntax::Methods
  config.formatter = :documentation
end
