class RemoveNewFieldFromBookmarks < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookmarks, :new_field, :string
  end
end
