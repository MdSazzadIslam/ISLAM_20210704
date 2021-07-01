class CreateVideos < ActiveRecord::Migration[6.1]
  def change
    create_table :videos do |t|
      t.string :titile
      t.string :categoryId
      t.string :name
      t.string :size
      t.string :type
      t.string :path
      t.string :thumbnails
      t.timestamps
    end
  end
end
