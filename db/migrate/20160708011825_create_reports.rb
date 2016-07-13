class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
    	t.date :date
    	t.string :function
    	t.string :title
    	t.text :text

      t.timestamps null: false
    end
  end
end
