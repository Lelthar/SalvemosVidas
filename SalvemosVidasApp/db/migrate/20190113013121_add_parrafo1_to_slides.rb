class AddParrafo1ToSlides < ActiveRecord::Migration[5.2]
  def change
    add_column :slides, :parrafo1, :text
    add_column :slides, :parrafo2, :text
    add_column :slides, :parrafo3, :text

    add_column :slides, :imagen1, :text
    add_column :slides, :imagen2, :text
    add_column :slides, :imagen3, :text
  end
end
