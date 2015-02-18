class RenameGalleryToPicture < ActiveRecord::Migration
  def change
    rename_table :galleries, :pictures
  end
end
