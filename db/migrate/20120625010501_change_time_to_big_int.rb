class ChangeTimeToBigInt < ActiveRecord::Migration
    def up
         change_column :events, :time, :bigint
    end

    def down
         change_column :events, :time, :integer
    end
end
