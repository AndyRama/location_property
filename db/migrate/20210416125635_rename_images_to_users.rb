class RenameImagesToUsers < ActiveRecord::Migration[6.1]
  def change
    rename_column :users, :images , :image
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
