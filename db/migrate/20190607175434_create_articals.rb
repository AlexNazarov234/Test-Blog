class CreateArticals < ActiveRecord::Migration[5.2]
  def change
    create_table :articals do |t|
      t.text :title
      t.text :text

      t.timestamps
    end
  end
end
