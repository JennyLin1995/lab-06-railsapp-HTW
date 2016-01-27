class CreateLineitem < ActiveRecord::Migration
  def change
    create_table :lineitems do |t|
      t.belongs_to :pumpkin, index: true
      t.belongs_to :order, index: true
    end
  end
end
