class RenameStatusToProperties < ActiveRecord::Migration[6.1]
  def change
     change_column :properties, :status, :string, default:"available"
  end
end
