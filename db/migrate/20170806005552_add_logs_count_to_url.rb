class AddLogsCountToUrl < ActiveRecord::Migration[5.1]
  def change
    add_column :urls, :logs_count, :integer
  end
end
