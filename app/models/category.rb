class Category < ApplicationRecord
  has_ancestry

  # extend FriendlyId
  #   friendly_id :name, use: :slugged

  #   # Validations
  #   validates_uniqueness_of :name, case_sensitive: false
end
