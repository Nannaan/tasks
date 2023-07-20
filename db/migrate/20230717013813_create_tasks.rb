class CreateTasks < ActiveRecord::Migration[6.0]
  def change
    create_table :tasks do |t|
      t.string   :task_name
      t.datetime :deadline
      t.string   :required_time
      t.timestamps
    end
  end
end
