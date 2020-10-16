class Town < ApplicationRecord
  belongs_to :township
  belongs_to :state
end
