class CreateSyouhinsyoukais < ActiveRecord::Migration[6.1]
  def change
    create_table :syouhinsyoukais do |t|

      t.timestamps
    end
  end
end
