class CreateUserAwards < ActiveRecord::Migration[7.0]
  def change
    create_table :user_awards do |t|
      t.references :user, null: false, foreign_key: true
      t.boolean :award_1
      t.boolean :award_2
      t.boolean :award_3
      t.boolean :award_4
      t.boolean :award_5
      t.boolean :award_6
      t.boolean :award_7
      t.boolean :award_8
      t.boolean :award_9
      t.boolean :award_10

      t.timestamps
    end
  end
end
