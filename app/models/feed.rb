class Feed < ApplicationRecord

  scope :default, -> { where(default: true) }

end
