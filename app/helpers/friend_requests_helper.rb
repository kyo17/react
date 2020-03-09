module FriendRequestsHelper
  def incoming_friend_requests?
    FriendRequest.where(friend: current_user).any? {|friend_request| current_user.id == friend_request.friend_id}
  end

  def outgoing_friend_requests?(user)
    !current_user.friend_requests.nil? and current_user.friend_requests.any? {|friend_request| user.id == friend_request.friend_id}
  end

  def friend_request_count
    FriendRequest.where(friend: current_user).count
  end
end
