class AddPictureToStep < ActiveRecord::Migration[7.0]
  def change
    add_column :steps, :picture, :string
  end
end
