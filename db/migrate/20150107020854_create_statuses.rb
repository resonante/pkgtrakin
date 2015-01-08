class CreateStatuses < ActiveRecord::Migration
  def change
    create_table :statuses do |t|
      t.belongs_to :package
      t.datetime :date
      t.string :status
      t.text :comments

      t.timestamps null: false
    end
  end
end
