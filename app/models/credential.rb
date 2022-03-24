class Credential < ApplicationRecord
    has_one :credential_status
    accepts_nested_attributes_for :credential_status
end
