require 'test_helper'

class RequestNotifierTest < ActionMailer::TestCase
  test "new" do
    mail = RequestNotifier.new
    assert_equal "New", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
