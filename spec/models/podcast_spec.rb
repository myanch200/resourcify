require 'rails_helper'

RSpec.describe Podcast, type: :model do
  
  # name is a required field

  describe "name" do
    it 'requires a name' do
      podcast = Podcast.new
      expect(podcast).to_not be_valid
      expect(podcast.errors[:name]).to_not be_empty
    end
  end
end
