class CreateSources < ActiveRecord::Migration[5.2]
  def change
    create_table :sources do |t|
    	t.string :name, null: false
    	t.string :url, null: false
    	t.boolean :active, null: false, default: true
    	t.boolean :real, null: false
    	t.timestamps
    end
  end
end
