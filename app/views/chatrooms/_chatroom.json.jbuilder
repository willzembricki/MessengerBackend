json.extract! chatroom, :id, :title, :created_at, :updated_at
json.url chatroom_url(chatroom, format: :json)
