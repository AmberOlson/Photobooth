class ChangeParticipant < ActiveRecord::Migration
  def change
    change_column :photos, :image_path, :text
    change_column :photos, :flicr_url, :text
  end
end
