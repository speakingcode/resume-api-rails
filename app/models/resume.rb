class Resume < ApplicationRecord
  has_many :work_history,
           :class_name => "Job",
           :inverse_of => :resume

  has_many :startup_experience,
           :class_name => "Startup",
           :inverse_of => :resume

  has_many :community_efforts,
           :inverse_of => :resume

  has_many :skillsets,
           :inverse_of => :resume

  has_many :educations,
           :inverse_of => :resume

  accepts_nested_attributes_for :work_history,
                                :skillsets,
                                :educations,
                                :community_efforts,
                                :startup_experience

end
