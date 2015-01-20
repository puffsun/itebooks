require_relative '../../test_helper'

describe Itebooks do
  it 'must be defined' do
    Itebooks::VERSION.wont_be_nil
  end
end
