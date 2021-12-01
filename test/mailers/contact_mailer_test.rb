require 'test_helper'

class ContactMailerTest < ActionMailer::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "should return contact email" do
    mail = ContactMailer.contact_email("elena@at.com", "Elena Atanasova", "078880786666", @message = "Hello")
    assert_equal ['info@artworks.com'], mail.to
    assert_equal ['info@artworks.com'], mail.from
  end
end
