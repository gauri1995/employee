class AddColumnRelocate < ActiveRecord::Migration[5.0]
  def change
   add_column :employees,:willingtorelocate,:boolean,:default=>false 
  end
end