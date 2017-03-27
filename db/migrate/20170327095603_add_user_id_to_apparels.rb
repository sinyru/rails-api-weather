# frozen_string_literal: true
class AddUserIdToApparels < ActiveRecord::Migration[5.0]
  def change
    add_reference :apparels, :user, foreign_key: true, index: true
  end
end
