class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.belongs_to :photo_session
      t.string :image_path, :flicr_url
      t.timestamps
    end
  end
end
