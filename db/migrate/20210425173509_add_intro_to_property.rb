class AddIntroToProperty < ActiveRecord::Migration[6.1]
  def change
    add_column :properties, :intro, :string
  end
end
