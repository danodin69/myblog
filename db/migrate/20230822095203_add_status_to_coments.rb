class AddStatusToComents < ActiveRecord::Migration[7.0]
  def change
    add_column :coments, :status, :string
  end
end
