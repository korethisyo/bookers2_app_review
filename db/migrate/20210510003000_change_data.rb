class ChangeData < ActiveRecord::Migration[5.2]
  def change
    change_column :comments, :user_id, :integer
    change_column :comments, :book_id, :integer
  end
end
