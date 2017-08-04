class CreateUrlRelationships < ActiveRecord::Migration[5.1]
  def change
    create_table :url_relationships do |t|
      t.integer :url_id
      t.integer :user_id

      t.timestamps
    end
  end
end
