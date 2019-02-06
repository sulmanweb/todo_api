# frozen_string_literal: true

class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :body
      t.boolean :status, default: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
