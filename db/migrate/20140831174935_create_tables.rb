class CreateTables < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
    	t.column :name, :varchar
    	t.column :status, :varchar
    	t.column :ethnicity, :varchar
    	t.column :height, :float
    	t.column :content, :varchar
    end
  end
end
