class ChangeType < ActiveRecord::Migration[5.2]
  def change
  	rename_column :users, :type, :tipo
  end
end
