class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
	  t.belongs_to :album, index: true
	  t.integer :album_id
      t.datetime :order_date
      t.timestamps null: false

    end
  end
end
