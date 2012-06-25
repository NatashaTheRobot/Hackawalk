class UpdateLatitudeTypeEvents < ActiveRecord::Migration
  def up
    change_column :events, :latitude, :decimal, {:precision=>10, :scale=>6}
  end

  def up
    change_column :events, :latitude, :float
  end
end
