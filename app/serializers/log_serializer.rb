class LogSerializer < ActiveModel::Serializer
  attributes :id,
    :start_time,
    :end_time,
    :data,
    :user_id
end
