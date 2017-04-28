class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.references :guest, foreign_key: { to_table: :users}
      t.references :listing, foreign_key: true
      t.date :check_in_at
      t.date :check_out_at
      t.integer :guest_count
      t.string :stripe_charge_id
      t.text :special_requirement

      t.timestamps
    end
  end
end
