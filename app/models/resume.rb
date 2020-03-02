class Resume < ApplicationRecord
  has_many :work_history,
           :class_name => "Job"

  has_many :startup_experience,
           :class_name => "Startup"

  has_many :community_efforts

  has_many :skillsets

  has_many :educations

  accepts_nested_attributes_for :work_history,
                                :skillsets,
                                :educations,
                                :community_efforts,
                                :startup_experience

end
