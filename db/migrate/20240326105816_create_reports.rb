class CreateReports < ActiveRecord::Migration[7.1]
  def change
    create_table :reports do |t|
      t.integer :user_id
      t.date :date
      t.integer :study_time
      t.string :study_curriculum
      t.string :study_content
      t.string :reflection
      t.timestamps
    end

    add_foreign_key :reports, :users, column: :user_id
    add_index :reports, :user_id
  end
end
