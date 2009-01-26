class CreateImagems < ActiveRecord::Migration
  def self.up
    create_table :imagems do |t|
      t.text :descricao
      t.string :avatar_file_name
      t.string :avatar_content_type    
      t.string :avatar_file_size 
      t.timestamps
      t.references :evento
    end
  end

  def self.down
    drop_table :imagems
  end
end
