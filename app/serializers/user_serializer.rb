class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :username, :password, :user_favorite
end
