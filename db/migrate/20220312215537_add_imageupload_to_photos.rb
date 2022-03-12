class AddImageuploadToPhotos < ActiveRecord::Migration[6.0]
  def change
    add_column :photos, :imageupload, :string
  end
end
