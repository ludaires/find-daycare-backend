class AddYelpIdToDaycares < ActiveRecord::Migration[5.2]
  def change
    add_column :daycares, :yelp_id, :string
  end
end
