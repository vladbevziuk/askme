class CreatePupils < ActiveRecord::Migration[7.0]
  def change
    create_table :pupils do |t|
      t.string :names
      t.string :nicknames
      t.string :emails

      t.timestamps
    end
  end
end
