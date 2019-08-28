class CreateTimeTables < ActiveRecord::Migration[5.2]
  def change
    create_table :time_tables do |t|
      t.belongs_to :user, foreign_key: true
      t.integer :status, default: 0
      t.datetime :checkin, null: false
      t.datetime :checkout
      t.integer :seconds

      t.timestamps
    end
  end
end
