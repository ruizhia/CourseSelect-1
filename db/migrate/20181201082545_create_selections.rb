class CreateSelections < ActiveRecord::Migration
    def change
      create_table :grades do |t|
        t.belongs_to :course, index: true
        t.belongs_to :user, index: true
        t.integer  :points
        t.boolean  :fixed, default: false
        t.timestamps null: false
      end
    end
  end