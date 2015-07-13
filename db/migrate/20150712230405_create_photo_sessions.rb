class CreatePhotoSessions < ActiveRecord::Migration
  def change
    create_table :photo_sessions do |t|
      t.datetime :created

      t.timestamps
    end
  end
end
