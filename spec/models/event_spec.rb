require 'rails_helper'

describe Event do

    it "requires a name" do
        event = Event.new(name: nil, location: "Palm Desert", price: 600, description: "music festival with lots of cheese and wine", image_file_name: "placeholder.jpeg", capacity: 1)

        expect(event.valid?).to eq false
        event.name = 'BBQ'
        expect(event.valid?).to eq true
    end

    it "must have a description at least 25 characters" do
        event = Event.new(name: "Howdy Howdy", location: "Palm Desert", price: 600, description: "not long enough", image_file_name: "placeholder.jpeg", capacity: 1)

        expect(event.valid?).to eq false
        event.description = 'This description is plenty long enough.  soooooo long'
        expect(event.valid?).to eq true
    end

    it "image file must end with jpg, jpeg, png, or webp" do
        event = Event.new(name: "Coachella", location: "Palm Desert", price: 600, description: "this description is sufficiently long enough", image_file_name: "placeholder.docx", capacity: 1)

        expect(event.valid?).to eq false
        event.image_file_name = 'placeholder.jpg'
        expect(event.valid?).to eq true
    end

    it ''
    blank_event create an event with blank price
    zero_ewventcreate an event with price 00
    positvepriceeventcreate an event with positive price

    expect(blank_event.free?)to eq true

end