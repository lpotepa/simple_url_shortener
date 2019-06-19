class CreateUrls < ActiveRecord::Migration[5.2]
  def change
    create_table :urls do |t|
      t.string :slug
      t.string :url

      t.timestamps
    end

    add_index(:urls, :slug, unique: true)
    add_index(:urls, :url, unique: true)
  end
end
