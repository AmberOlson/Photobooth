class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.string :name, :email
      t.belongs_to :photo_session
      t.timestamps
    end
  end
end
