class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  connects_to databese: {
    writing: :primary,
    reading: :primary_replica
  }
end
