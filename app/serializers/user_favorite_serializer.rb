class UserFavoriteSerializer
    include FastJsonapi::ObjectSerializer
    attributes :id, :user, :event
  end