class CreateCommunities < ActiveRecord::Migration[6.0]
  def change
    create_table :communities do |t|
      t.string :name, null: false
      t.index :name, unique: true
      t.string :image
      t.timestamps
    end
  end
end
