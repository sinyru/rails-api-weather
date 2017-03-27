# frozen_string_literal: true
class ApparelSerializer < ActiveModel::Serializer
  attributes :id, :name, :clothing_type, :user_id
end
