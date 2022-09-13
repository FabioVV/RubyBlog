class AddFiToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :just_learning_addtables, :datetime
    add_column :articles, :just_learning_addtablesTWO, :datetime
  end
end
