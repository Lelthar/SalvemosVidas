json.extract! question, :id, :description, :correct, :incorrect1, :incorrect2, :incorrect3, :practice_id, :created_at, :updated_at
json.url question_url(question, format: :json)
