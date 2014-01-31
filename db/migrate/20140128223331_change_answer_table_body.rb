class ChangeAnswerTableBody < ActiveRecord::Migration
  def change
   remove_column :answers, :body, :string
   add_column :answers, :body, :text
  end
end
