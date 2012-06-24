class AddFieldsToEvents < ActiveRecord::Migration
  def change
      add_column :events, :name, :string
      add_column :events, :address, :string
      add_column :events, :city, :string
      add_column :events, :state, :string
      add_column :events, :zip, :integer
      add_column :events, :time, :integer
      add_column :events, :latitude, :float
      add_column :events, :venue, :string
      add_column :events, :description, :text
  end
end
