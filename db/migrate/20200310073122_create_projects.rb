class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :name
      t.string :url
      t.text   :description
      t.string :live_url
      t.string :repo_url
      t.string :screenshot_urls,
               :array => true,
               :default => []

      t.timestamps
    end
  end
end
