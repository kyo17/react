module FriendsHelper
  def is_friend?(user)
    current_user.friends.any? {|friend| user.id == friend.id}
  end
end
