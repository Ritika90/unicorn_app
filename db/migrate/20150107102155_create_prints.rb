class CreatePrints < ActiveRecord::Migration
  def change
    create_table :prints do |t|
      t.string :email
      t.string :message

      t.timestamps
    end
  end
end
