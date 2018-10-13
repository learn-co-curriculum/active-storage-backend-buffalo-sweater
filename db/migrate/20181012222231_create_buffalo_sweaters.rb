class CreateBuffaloSweaters < ActiveRecord::Migration[5.2]
  def change
    create_table :buffalo_sweaters do |t|
      # looks good!
      t.string :buffalo_name
      t.string :sweater_design

      t.timestamps
    end
  end
end
