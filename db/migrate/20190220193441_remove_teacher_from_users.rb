class RemoveTeacherFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :teacher?
  end
end
