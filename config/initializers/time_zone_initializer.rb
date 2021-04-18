class ActiveSupport::TimeWithZone
    def as_json(options = {})
        strftime('%d %B %Y')
    end
end