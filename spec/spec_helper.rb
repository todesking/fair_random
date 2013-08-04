require 'rspec/given'
require 'count_by'
require '1_as_identity_function'
require_relative '../lib/fair_random.rb'

def scenario(*args)
  context(*args)
end
