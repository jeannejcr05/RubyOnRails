json.extract! news, :id, :title, :date, :mood, :doing, :picture, :created_at, :updated_at
json.url news_url(news, format: :json)
