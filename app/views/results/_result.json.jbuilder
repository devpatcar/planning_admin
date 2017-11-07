json.extract! result, :id, :protocol_id, :answer, :question, :image_url, :user, :comment, :created_at, :updated_at
json.url result_url(result, format: :json)
