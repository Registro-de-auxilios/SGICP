class CategoriasInsumo < ActiveRecord::Base
  belongs_to :insumos
  belongs_to :categorias
end
