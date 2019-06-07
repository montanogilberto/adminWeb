class Expedient < ApplicationRecord
  belongs_to :court
  belongs_to :state
  belongs_to :district
  belongs_to :act
  belongs_to :matter
  belongs_to :judgment
end
