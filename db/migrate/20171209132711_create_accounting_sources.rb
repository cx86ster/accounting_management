class CreateAccountingSources < ActiveRecord::Migration
  def change
    create_table :accounting_sources do |t|
      t.string :accounting_source_code, :unique => true, :null => false
      t.string :accounting_source_name
      t.datetime :deleted_at

      t.timestamps null: false
    end
  end
end
