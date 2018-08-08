# frozen_string_literal: true

class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.references :source, null: false
      t.string :headline, null: false
      t.string :summary
      t.string :url, null: false
      t.datetime :posted_at, null: false
      t.datetime :deleted_at
      t.timestamps
    end
  end
end
