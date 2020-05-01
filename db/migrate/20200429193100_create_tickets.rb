class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.string :name
      t.text :body
      t.string :status # TODO: constrain to only [new, blocked, in_progress, fixed]
      t.integer :project_id

      t.timestamps
    end
  end
end
