class CreateOwners < ActiveRecord::Migration[5.2]
  def change
    t.string :name
    t.string :password_digest
  end
end
