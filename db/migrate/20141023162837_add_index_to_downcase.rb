class AddIndexToDowncase < ActiveRecord::Migration
  def change
  	add_index :words, :downcase
  end
end
