class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|

      t.integer :user_id
      t.string  :aka
      t.string  :gender
      t.string  :grad_year
      t.string  :rank
      t.string  :scholarship
      t.string  :usua_num
      t.integer :jersey_num
      t.string  :jersey_size
      t.string  :shorts_size
      t.string  :drivers_license
      t.string  :drive_status
      t.text  :skills
      t.text  :medical_info
      t.text  :notes

      t.timestamps
    end
  end
end
