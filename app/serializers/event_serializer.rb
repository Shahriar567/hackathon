class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :date_from, :date_to
end
