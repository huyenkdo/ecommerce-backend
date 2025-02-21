class SetDefaultValueToTotalValueInOrders < ActiveRecord::Migration[7.1]
  def change
    add_column :orders, :total_price_v2, :integer

    change_column_default :orders, :total_price_v2, 0

    rename_column :orders, :total_price, :old_title
    rename_column :orders, :total_price_v2, :total_price

    remove_column :orders, :old_title


    change_column_default :orders, :total_price, '0'
    change_column :orders, :total_price, :integer, using: 'total_price::integer'
  end
end
