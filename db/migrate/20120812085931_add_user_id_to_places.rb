class AddUserIdToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :user_id, :integer
    add_column :places, :last_editor_id, :integer
  end
end
