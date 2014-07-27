class EnableExtenstionHstore < ActiveRecord::Migration
  def change
    enable_extension "hstore"
  end
end
