class CreateSkillsets < ActiveRecord::Migration[5.0]
  def change
    create_table :skillsets do |t|
      t.belongs_to :resume

      t.string :title

      t.string :skills,
               :array   => true,
               :default => []

      t.timestamps
    end
  end
end
