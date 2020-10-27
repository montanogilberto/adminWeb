class Expedient < ApplicationRecord
  belongs_to :customer
  belongs_to :court
  belongs_to :district
  belongs_to :act
  belongs_to :matter
  belongs_to :judgment
  belongs_to :state
end
