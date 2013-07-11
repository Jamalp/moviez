class CreateActors < ActiveRecord::Migration
  def up
    create_table :actors do |t|
      t.string :name

  end

  def down
  end
end
