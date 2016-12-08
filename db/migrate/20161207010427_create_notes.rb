class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.text :name
      t.timestamp :date
      t.text :note

      t.timestamps
    end
  end
end
