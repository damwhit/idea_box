require 'rails_helper'

RSpec.describe Idea, type: :model do
  it "should have a quality that defaults to 0" do
    idea = Idea.new
    assert_equal(0, idea.quality)
  end
end
