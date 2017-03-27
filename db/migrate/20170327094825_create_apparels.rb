# frozen_string_literal: true
class CreateApparels < ActiveRecord::Migration[5.0]
  def change
    create_table :apparels do |t|
      t.string :name, null: false
      t.string :clothing_type, null: false
      t.timestamps
    end
  end
end
