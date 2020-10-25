class Address < ApplicationRecord
  belongs_to :state
  belongs_to :town
  belongs_to :towntype
  belongs_to :township
  belongs_to :codigo_postal
end
