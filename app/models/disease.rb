class Disease < ActiveRecord::Base
  belongs_to :cat
  has_many :treatments

end
