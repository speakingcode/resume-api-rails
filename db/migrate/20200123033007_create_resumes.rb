class CreateResumes < ActiveRecord::Migration[5.0]
  def change
    create_table :resumes do |t|
      t.string :name
      t.string :title
      t.text :summary
      t.string :website
      t.string :github
      t.string :stack_overflow

      t.timestamps
    end
  end
end
