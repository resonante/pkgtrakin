class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :company_name

      t.timestamps null: false
    end
  end
end
