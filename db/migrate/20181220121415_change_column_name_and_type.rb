class ChangeColumnNameAndType < ActiveRecord::Migration[5.2]
  def change
  	#rename_column :presents, :linked_elf, :elf_id
  	change_column :presents, :elf_id, :integer
  end
end
