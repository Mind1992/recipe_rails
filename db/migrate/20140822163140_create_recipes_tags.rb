class CreateRecipesTags < ActiveRecord::Migration
  def change
    create_table :recipes_tags do |t|
    	t.column :recipe_id, :integer
    	t.column :tag_id, :integer
    end
    remove_column :tags, :recipe_id, :integer
  end
end
