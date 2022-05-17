class AddInitialTables < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.string :name, null: false
    end

    create_table :payees do |t|
      t.string :name, null: false
    end

    create_table :categories do |t|
      t.string :name, null: false
    end

    create_table :transactions do |t|
      t.references :account, null: false
      t.references :payee
      t.references :category
      t.integer :amount_cents, null: false
      t.date :transaction_date, null: false
      t.string :note
      t.boolean :cleared, null: false, default: false
    end
  end
end
