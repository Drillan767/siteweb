require 'test_helper'

class MessageTest < ActiveSupport::TestCase
  # previous tests omitted

  test 'attributes can not be blank' do
    msg = Message.new
    refute msg.valid?
  end
end