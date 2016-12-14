require 'rails_helper'

RSpec.feature "User views all artists" do
  before do
    Artist.create(name: "The Bad Plus", image_path: "http://www.comusic.org/wp-content/uploads/2016/06/TheBadPlus_OnSacredGround_9135rev-1320953207.jpg")
    Artist.create(name: "Beach House", image_path: "https://d1ya1fm0bicxg1.cloudfront.net/2016/02/promoted-media_56b27aa9a3b10.jpg")
  end

  scenario "artists exist in the database" do
    first_artist  = "The Bad Plus"
    second_artist = "Beach House"
    visit '/artists'

    expect(page).to have_content first_artist
    expect(page).to have_content second_artist
  end
end
