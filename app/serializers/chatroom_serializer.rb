class ChatroomSerializer
    include FastJsonapi::ObjectSerializer
    attributes :id,:title, :users, :messages
    attributes :users do |room|
        UserSerializer.new(room.users.uniq)
    end
end         
