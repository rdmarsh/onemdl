class AddSlugToOrganisations < ActiveRecord::Migration
  def change
    add_column :organisations, :slug, :string
    add_index :organisations, :slug
  end
end
