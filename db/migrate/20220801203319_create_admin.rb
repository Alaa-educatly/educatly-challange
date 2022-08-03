class CreateAdmin < ActiveRecord::Migration[7.0]
  def change
    create_table :admins do |t|
      t.string :email
      t.string :name

      t.timestamps
    end
  end
end