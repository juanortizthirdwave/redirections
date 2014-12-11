class CreateRedirections < ActiveRecord::Migration
  def change
    create_table :redirections do |t|
      t.string :route
      t.string :redirect

      t.timestamps
    end
  end
end
