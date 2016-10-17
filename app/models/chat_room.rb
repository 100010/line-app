class ChatRoom < ApplicationRecord
  has_many :users, through: :chat_room_users
  has_many :chat_room_users

  def join(user_id)
    self.chat_room_users.create(user_id: user_id)
  end
end
