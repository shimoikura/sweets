class CreateChannels < ActiveRecord::Migration
  def change
    create_table :channels do |t|
      t.string :name
      t.string :teacher
      t.datetime :time
      t.string :slide
      t.string :syllabus

      t.timestamps null: false
    end
  end
end
