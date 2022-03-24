class CreateCredentials < ActiveRecord::Migration[7.0]
  def change
    create_table :credentials do |t|
      t.string :credential_type

      t.timestamps
    end
  end
end
