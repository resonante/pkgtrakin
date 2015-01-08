class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.string :reference
      t.string :track
      t.datetime :date_received
      t.belongs_to :user
      t.text :sender
      t.decimal :height
      t.decimal :width
      t.decimal :length
      t.decimal :weight
      t.text :description

      t.timestamps null: false
    end
  end
end
