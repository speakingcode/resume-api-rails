class CreateCommunityEfforts < ActiveRecord::Migration[5.0]
  def change
    create_table :community_efforts do |t|
      t.belongs_to :resume

      t.string :description
      t.string :date
      t.string :url

      t.timestamps
    end
  end
end
