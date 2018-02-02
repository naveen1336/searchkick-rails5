class AddFieldsToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :product_type, :string
    add_column :products, :gender,:string
    # add_column :products,:gender, :string
     add_column :products,:brand, :string
  end
end
