class CreateCategoriasInsumos < ActiveRecord::Migration
  def change
    create_table :categorias_insumos do |t|
      t.references :insumos, index: true
      t.references :categorias, index: true

      t.timestamps
    end
  end
end
