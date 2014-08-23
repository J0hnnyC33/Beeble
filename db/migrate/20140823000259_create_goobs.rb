class CreateGoobs < ActiveRecord::Migration
  def change
    create_table :goobs do |t|
      t.string :description

      t.timestamps
    end
  end
end
