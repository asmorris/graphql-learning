require 'test_helper'

class Resolvers::CreateLinkTest < ActiveSupport::TestCase
  def perform(args= {} )
    Resolvers::CreateLink.new.call(nil, args, {})
  end

  test 'creating new link' do
    link = perform(
      url: "http://example.com",
      description: "An example"
    )

    assert link.persisted?
    assert_equal link.description, 'An example'
    assert_equal link.url, 'http://example.com'
  end
end
