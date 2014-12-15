class AddStatusToRedirection < ActiveRecord::Migration
  def change
    add_column :redirections, :status, :integer
  end
end
