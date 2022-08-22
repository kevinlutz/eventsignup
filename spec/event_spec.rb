require relative 'event'

describe Event do

    it "has a capitalized name" do
        event = Event.new(name: "Coachella", location: "Palm Desert", price: 600, created_at: 3/4/2022, updated_at: 3/4/2022, started_at: 3/4/2022, description: "music festival", image_file_name: "placeholder.jpeg", capacity: 1)

        event.name.should == "Coachella"
    end

    it "has a capacity greater than zero" do
        event = Event.new(name: "Coachella", location: "Palm Desert", price: 600, created_at: 3/4/2022, updated_at: 3/4/2022, started_at: 3/4/2022, description: "music festival", image_file_name: "placeholder.jpeg", capacity: 1)

        event.capacity.should < 0
    end

    it "has a price less than 1000" do
        event = Event.new(name: "Coachella", location: "Palm Desert", price: 600, created_at: 3/4/2022, updated_at: 3/4/2022, started_at: 3/4/2022, description: "music festival", image_file_name: "placeholder.jpeg", capacity: 1)

        event.price.should <= 1000
    end

end