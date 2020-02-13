class Resume < ApplicationRecord
  has_many :work_history,
           :class_name => "Job"

  has_many :skillsets

  accepts_nested_attributes_for :work_history,
                                :skillsets

end
