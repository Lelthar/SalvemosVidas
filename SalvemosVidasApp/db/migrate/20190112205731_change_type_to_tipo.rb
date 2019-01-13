class ChangeTypeToTipo < ActiveRecord::Migration[5.2]
  def change
    rename_column :slides, :type, :tipo
  end
end
