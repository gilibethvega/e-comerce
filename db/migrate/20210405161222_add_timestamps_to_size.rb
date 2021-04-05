class AddTimestampsToSize < ActiveRecord::Migration[5.2]
  def change
    add_column :sizes, :created_at, :datetime
    add_column :sizes, :updated_at, :datetime
  end
end
