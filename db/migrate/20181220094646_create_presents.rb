class CreatePresents < ActiveRecord::Migration[5.2]
  def change
    create_table :presents do |t|
      t.string :contents
      t.string :name_recepient
      t.string :linked_elf
      t.string :status

      t.timestamps
    end
  end
end
