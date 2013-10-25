class CreateVodkas < ActiveRecord::Migration
  def change
    create_table :vodkas do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
