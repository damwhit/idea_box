require 'rails_helper'

RSpec.describe Api::V1::IdeasController, type: :controller do
  it "responds to json" do
    get :index, format: :json
    assert_response :success
  end

  it 'index returns an array of records' do
    get :index, format: :json

    assert_kind_of Array, json_response
  end

  it '#index returns the correct number of ideas' do
    get :index, format: :json

    assert_equal Idea.count, json_response.count
  end

  it '#index contains ideas with the correct properties' do
    get :index, format: :json

    json_response.each do |idea|
      assert idea["title"]
      assert idea["body"]
      assert idea["quality"]
    end
  end
end
