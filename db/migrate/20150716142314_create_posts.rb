class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :body
      t.integer :votes
      t.string :type
      t.string :title # for questions
      t.string :tags # for questions
      t.boolean :is_best, default: false # for answers
      t.integer :question_id, index: true # for answers
      t.timestamps null: false
    end
  end
end
