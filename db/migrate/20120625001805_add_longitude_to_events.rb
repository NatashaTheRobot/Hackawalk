class AddLongitudeToEvents < ActiveRecord::Migration
  def change
    add_column :events, :longitude, :decimal, {:precision=>10, :scale=>6}
  end
end
