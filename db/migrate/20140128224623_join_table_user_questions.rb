class JoinTableUserQuestions < ActiveRecord::Migration
  def change
    create_table :questions, id: false do |t|
      t.belongs_to :user
      t.belongs_to :question
    end end
end
