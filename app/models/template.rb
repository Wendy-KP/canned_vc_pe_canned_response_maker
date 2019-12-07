class Template < ApplicationRecord
  # Direct associations

  belongs_to :user,
             :required => false

  belongs_to :function,
             :counter_cache => true

  # Indirect associations

  # Validations

end
