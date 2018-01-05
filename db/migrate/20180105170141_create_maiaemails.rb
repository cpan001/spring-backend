class CreateMaiaemails < ActiveRecord::Migration[5.1]
  def change
    create_table :maiaemails do |t|
      t.text :email
      t.timestamps
    end
  end
end
