class FixPhototable < ActiveRecord::Migration
  def change
    remove_column :photos, :image_path
    add_column :photos, :image_data, :text, :limit => nil
  end
end
