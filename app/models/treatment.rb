class Treatment < ActiveRecord::Base
  belongs_to :disease
  has_many :observationbiometrics

end
