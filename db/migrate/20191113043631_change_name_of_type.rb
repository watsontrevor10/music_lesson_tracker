class ChangeNameOfType < ActiveRecord::Migration[6.0]
  def change
    rename_column :lesson_payments, :type, :payment_type
  end
end
