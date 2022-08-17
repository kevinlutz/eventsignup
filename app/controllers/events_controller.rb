class EventsController < ApplicationController
    def index
        @events = ["me", "you"]
    end
end
