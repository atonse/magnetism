class CreateTemplateSets < ActiveRecord::Migration
  def self.up
    create_table :template_sets do |t|
      t.string :name
    end
  end

  def self.down
    drop_table :template_sets
  end
end
