class AddEducatorId < ActiveRecord::Migration
  def change
    add_column :parents, :educator_id, :integer
  end
end
