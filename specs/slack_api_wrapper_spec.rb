# slack_api_wrapper_spec.rb
require_relative 'spec_helper'

describe SlackApi do
  it "can send a valid message" do
    VCR.use_cassette("slack-posts") do
      response = SlackApi.send_msg("Hey I can post messages!", "testing")
      expect(response).must_equal true
    end
  end
end

