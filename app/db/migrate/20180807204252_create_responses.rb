# frozen_string_literal: true

class CreateResponses < ActiveRecord::Migration[5.2]
  def change
    create_table :responses do |t|
      t.references :user, null: false
      t.references :article, null: false
      t.boolean :real, null: false
      t.timestamps
    end
  end
end
