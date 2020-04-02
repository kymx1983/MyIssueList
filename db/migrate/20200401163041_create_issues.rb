class CreateIssues < ActiveRecord::Migration[5.2]
  def change
    create_table :issues do |t|
      t.integer :user_id
      t.text :title
      t.text :content
      t.text :label
      t.timestamps
    end
  end
end
