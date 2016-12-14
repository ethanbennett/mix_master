require 'rails_helper'

RSpec.feature "User can delete an artist" do
  before do
    @artist = Artist.create(name: "Beach House", image_path: "https://d1ya1fm0bicxg1.cloudfront.net/2016/02/promoted-media_56b27aa9a3b10.jpg")
  end

  scenario "artist already exists in the database" do
    artist = Artist.find_by(name: "Beach House")
    path = artist.id
    visit "/artists/#{path}"
    click_on "Delete"
    expect(page).to_not have_content @artist.name
  end
end