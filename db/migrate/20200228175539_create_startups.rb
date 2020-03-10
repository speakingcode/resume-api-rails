class CreateStartups < ActiveRecord::Migration[5.0]
  def change
    create_table :startups do |t|
      t.belongs_to :resume

      t.string :title
      t.string :company_name
      t.string :location
      t.string :start_date
      t.string :end_date
      t.string :url

      t.text :highlights,
             :array   => true,
             :default => []

      t.timestamps
    end
  end
end
