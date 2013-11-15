class Actor < ActiveRecord::Base

  def actor_name_dob
    return "#{self.name} (#{self.dob})"
  end

end
