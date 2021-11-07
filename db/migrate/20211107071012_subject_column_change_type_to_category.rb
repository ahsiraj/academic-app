class SubjectColumnChangeTypeToCategory < ActiveRecord::Migration[6.1]
  def change
    rename_column :subjects, :type, :category
  end
end
