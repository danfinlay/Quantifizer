class LogTypeSerializer < ActiveModel::Serializer
  attributes :id,
    :title,
    :description,
    :has_duration
end
