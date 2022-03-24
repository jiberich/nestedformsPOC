class CreateCredentialStatuses < ActiveRecord::Migration[7.0]
  def change
    create_table :credential_statuses do |t|
      t.string :status
      t.belongs_to :credential, null: false, foreign_key: true

      t.timestamps
    end
  end
end
