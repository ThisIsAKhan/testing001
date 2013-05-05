class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.string :clothtype
      t.string :clothstore
      t.string :useremail

      t.timestamps
    end
  end
end
