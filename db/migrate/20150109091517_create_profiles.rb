class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.belongs_to :user
      t.string :name
      t.text :address
      t.string :phone
      t.string :mobile
      t.string :fax
      t.string :zipcode
      t.string :city
      t.string :state
      t.string :country

      t.timestamps null: false
    end
  end
end
