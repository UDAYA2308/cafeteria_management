class CreateStatusCodes < ActiveRecord::Migration[6.0]
  def change
    create_table :status_codes do |t|
      t.string :status

      t.timestamps
    end
  end
end
