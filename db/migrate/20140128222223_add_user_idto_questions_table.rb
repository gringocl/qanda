class AddUserIdtoQuestionsTable < ActiveRecord::Migration
  def change
    change_table :questions do |t|
      t.references :user, index: true
    end
    change_table :answers do |t|
      t.references :user, index: true
    end
  end
end
