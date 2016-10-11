class Init < ActiveRecord::Migration[5.0]
  def change
  enable_extension 'uuid-ossp'

    create_table :users, id: :uuid, default: "uuid_generate_v4()" do |t|
      # for admin
      t.boolean :admin, null: false, default: false

      # for user
      t.string :email, null: false, uniqueness: true
      t.string :password_digest, null: false

      #user info
      t.text :introduce
      t.string :image
      t.string :cover_image

      #password_reset
      t.string :reset_digest
      t.datetime :reset_sent_at
    end
  end
end
