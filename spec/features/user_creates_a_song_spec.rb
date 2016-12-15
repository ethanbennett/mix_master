require 'rails_helper'

RSpec.feature "User submits a new song" do
  scenario "they see the page for the individual song" do
    artist = Artist.create(name: "Beach House", image_path: "https://d1ya1fm0bicxg1.cloudfront.net/2016/02/promoted-media_56b27aa9a3b10.jpg")
    song_title = "Levitation"

    visit artist_path(artist)
    click_on "New Song"
    fill_in "song_title", with: song_title
    click_on "Create Song"

    expect(page).to have_content song_title
    expect(page).to have_link artist.name, href: artist_path(artist)
  end
end