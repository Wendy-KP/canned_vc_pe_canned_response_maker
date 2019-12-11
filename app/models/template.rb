class Template < ApplicationRecord
  # Direct associations

  belongs_to :function,
             :counter_cache => true

  has_one    :canned_response,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
