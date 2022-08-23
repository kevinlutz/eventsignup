class UpdateDefaultImageFileName < ActiveRecord::Migration[6.1]
  def change
    change_column_default :events, :image_file_name, "placeholder.jpg"
  end
end
