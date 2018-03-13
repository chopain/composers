class AddLinkToCompositions < ActiveRecord::Migration[5.1]
  def change
    add_column :compositions, :link, :string
    add_column :compositions, :version, :string
  end
end
