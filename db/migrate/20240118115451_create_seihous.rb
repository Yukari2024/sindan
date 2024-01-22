class CreateSeihous < ActiveRecord::Migration[6.1]
  def change
    create_table :seihous do |t|

      t.timestamps
    end
  end
end
