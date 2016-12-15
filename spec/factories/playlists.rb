FactoryGirl.define do
  sequence :playlist_name do |n|
    "Playlist #{n}"
  end 
  
  factory :playlist do
    name { generate(:playlist_name) }

  factory :playlist_with_songs do
    songs { create_list(:song, 3) }
    end
  end
end
