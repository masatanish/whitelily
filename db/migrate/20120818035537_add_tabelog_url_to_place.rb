class AddTabelogUrlToPlace < ActiveRecord::Migration
  def change
    add_column :places, :tabelog_url, :string
  end
end
