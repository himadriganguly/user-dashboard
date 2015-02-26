class CreateWindowShoppers < ActiveRecord::Migration
  def change
    create_table :window_shoppers do |t|

      t.timestamps
    end
  end
end
