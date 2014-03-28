class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :email
      t.string :subject
      t.string :description
      t.string :first
      t.string :last

      t.timestamps
    end
  end
end
