class LogSerializer < ActiveModel::Serializer
  attributes :ip, :referer, :user_agent, :visited_at

  def visited_at
    object.created_at
  end
end
