class EventSerializer
    include FastJsonapi::ObjectSerializer
    attributes :id, :name, :image, :description
  end