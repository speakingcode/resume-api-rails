class CreateEducations < ActiveRecord::Migration[5.0]
  def change
    create_table :educations do |t|
      t.belongs_to :resume

      t.string :degree
      t.string :department
      t.string :institution
      t.string :year

      t.timestamps
    end
  end
end
