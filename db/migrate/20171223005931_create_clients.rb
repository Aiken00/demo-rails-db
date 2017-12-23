class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :email
      t.string :job
      t.string :company
      t.string :address

      t.timestamps
    end
  end
end
