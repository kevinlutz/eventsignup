class Event < ApplicationRecord
    has_many :registrations, dependent: :destroy

    validates :name, :location, presence: true

    validates :description, length: { minimum: 25 }

    validates :price, numericality: { greater_than_or_equal_to: 0 }, presence: true

    validates :capacity, numericality: { only_integer: true, greater_than: 0 }

    validates :image_file_name, format: {
    with: /\w+\.(jpg|jpeg|png|webp)\z/i,
    message: "must be a JPG or PNG image"
    }

    def free?
        price.blank? || price.zero? 
    end

    # def self.upcoming
    #     where("starts_at > ?", Time.now).order("starts_at")
    # end

end
