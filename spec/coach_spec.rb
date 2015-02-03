require 'coach'
require 'spec_helper'

require_relative 'passenger_container_spec'

describe Coach do
  it_behaves_like 'a passenger container'
end