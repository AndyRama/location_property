class RemoveColumn < ActiveRecord::Migration[6.1]
  def change
    remove_column :properties, :for_rent
  end
end
