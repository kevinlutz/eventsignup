module EventsHelper

    def price(event)
        if event.free?
            "Free"
        else
            number_to_currency(event.price, precision: 0)
        end
    end

    def day_and_time(event)
        if event.starts_at
          event.starts_at.strftime("%B %d at %I:%M %P")
        else
          "None"
        end
    end

end
