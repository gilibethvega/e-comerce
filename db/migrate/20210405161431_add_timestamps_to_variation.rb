class AddTimestampsToVariation < ActiveRecord::Migration[5.2]
  def change
    add_column :variations, :created_at, :datetime
    add_column :variations, :updated_at, :datetime
  end
end
