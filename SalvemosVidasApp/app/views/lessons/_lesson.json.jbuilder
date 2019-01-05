json.extract! lesson, :id, :name, :description, :category, :user_id, :created_at, :updated_at
json.url lesson_url(lesson, format: :json)
