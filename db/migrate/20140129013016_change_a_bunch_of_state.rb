class ChangeABunchOfState < ActiveRecord::Migration
  def change
   remove_column :questions, :user_id, :integer
   add_column :questions, :answer, :text
   drop_table :answers
  end
end
