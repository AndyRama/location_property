class AddDetailsToProperties < ActiveRecord::Migration[6.1]
  def change
   add_column :properties, :details, :text
  end
end
