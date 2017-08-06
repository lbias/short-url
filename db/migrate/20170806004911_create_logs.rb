class CreateLogs < ActiveRecord::Migration[5.1]
  def change
    create_table :logs do |t|
      t.string :referer,    default: ''
      t.string :ip,         default: ''
      t.string :user_agent, default: ''
      t.references :url, foreign_key: true, index: true
      t.timestamps
    end
  end
end
