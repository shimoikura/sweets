json.extract! channel, :id, :name, :teacher, :time, :slide, :syllabus, :created_at, :updated_at
json.url channel_url(channel, format: :json)