class Function < ApplicationRecord
  # Direct associations

  has_many   :templates,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
