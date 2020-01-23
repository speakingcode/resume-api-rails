class Resume < ApplicationRecord
  has_many :work_history,
           :class_name => "Job"

  has_many :skillsets
end
