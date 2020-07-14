class RemoveUserFromToys < ActiveRecord::Migration[6.0]
  def change
    remove_column :toys, :user, :string
  end
end
