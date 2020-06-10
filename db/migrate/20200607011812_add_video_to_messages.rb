class AddVideoToMessages < ActiveRecord::Migration[6.0]
  def change
    add_column :messages, :video, :string
  end
end
