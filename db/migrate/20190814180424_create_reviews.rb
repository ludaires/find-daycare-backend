class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.integer :daycare_id
      t.integer :user_id
      t.text :notes
      t.date :schedule_visit
      t.boolean :favorite, default: true
      t.text :review

      t.timestamps
    end
  end
end
