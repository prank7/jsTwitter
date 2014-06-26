require 'spec_helper'

describe HashtagController do

  describe "GET 'tag'" do
    it "returns http success" do
      get 'tag'
      response.should be_success
    end
  end

end
