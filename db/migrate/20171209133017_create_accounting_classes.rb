class CreateAccountingClasses < ActiveRecord::Migration
  def change
    create_table :accounting_classes do |t|
      t.string :accounting_class_code, :unique => true, :null => false
      t.string :accounting_class_name
      t.datetime :deleted_at

      t.timestamps null: false
    end
  end
end
