class AddSlugToSystems < ActiveRecord::Migration
  def change
    add_column :systems, :slug, :string
    add_index :systems, :slug
  end
end
