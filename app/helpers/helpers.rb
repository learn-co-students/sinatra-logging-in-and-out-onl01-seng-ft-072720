class Helpers

# def self.current_user(session)
#     @user = User.all.find_by(id: session[:user_id])
# end

def self.current_user(session)
    return unless session[:user_id]
    current_user ||= User.find(session[:user_id])
  end

# def self.is_logged_in?(hash)
#   #  binding.pry
#   user = hash[:user_id]
#     hash[:user_id] == user
# end

def self.is_logged_in?(session)
 #   binding.pry
    !session[:user_id].nil?
  end

end