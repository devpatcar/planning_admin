json.extract! question, :id, :question, :description, :template_id, :required, :images, :comment, :created_at, :updated_at
json.url question_url(question, format: :json)
