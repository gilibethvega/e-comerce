class AddTimestampsToColor < ActiveRecord::Migration[5.2]
  def change
    add_column :colors, :created_at, :datetime
    add_column :colors, :updated_at, :datetime
  end
end
