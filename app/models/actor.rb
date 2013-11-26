class Actor < ActiveRecord::Base

  def actor_name_dob
    lottery_number = rand(1..10)
    return "#{self.name} (#{self.dob})"
  end


end
