require 'rails_helper'

RSpec.describe Idea, type: :model do
  it "should have a quality that defaults to 0" do
    idea = Idea.new
    assert_equal('swill', idea.quality)
  end

  it "should be invalid without a title or body" do
    idea_without_title_or_body = Idea.new

    refute(idea_without_title_or_body.valid?)
  end

  it "should be invalid without a title" do
    idea = Idea.new(body: "body")

    refute(idea.valid?)
  end

  it "should be invalid without a body" do
    idea = Idea.new(title: "title")

    refute(idea.valid?)
  end

  it "is valid with a title and body" do
    idea_with_title_and_body = Idea.new(title: "title", body: "body")

    assert(idea_with_title_and_body.valid?)
  end
end
