class CreateMyDaycares < ActiveRecord::Migration[5.2]
  def change
    create_table :my_daycares do |t|
      t.integer :user_id
      t.integer :daycare_id
      t.text :notes
      t.string :schedule_visit
      t.boolean :favorite, default: false

      t.timestamps
    end
  end
end
