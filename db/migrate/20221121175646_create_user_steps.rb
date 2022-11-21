class CreateUserSteps < ActiveRecord::Migration[7.0]
  def change
    create_table :user_steps do |t|
      t.boolean :done
      t.references :user, null: false, foreign_key: true
      t.references :step, null: false, foreign_key: true

      t.timestamps
    end
  end
end
