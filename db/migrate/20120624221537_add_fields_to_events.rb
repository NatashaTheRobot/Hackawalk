class AddFieldsToEvents < ActiveRecord::Migration
  def change
      add_column :name :string
      add_column :street :string
      add_column :city :string
      add_column :state :string
      add_column :zip :integer
      add_column :date :integer
  end
end
