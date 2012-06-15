class CreateTicketTriagers < ActiveRecord::Migration
  def change
    create_table :ticket_triagers do |t|

      t.timestamps
    end
  end
end
