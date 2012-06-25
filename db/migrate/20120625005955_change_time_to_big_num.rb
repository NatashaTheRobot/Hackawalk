class ChangeTimeToBigNum < ActiveRecord::Migration
  def up
      change_column :events, :time, :bignum
  end

  def down
      remove_column :events, :time, :integer
  end
end
