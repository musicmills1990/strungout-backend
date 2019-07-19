class StringPack < ApplicationRecord
  belongs_to :user


  def update_string_counter
    # the code I wish I had.....
    # not sure how I get the update params value
    if stringpack_params === "Low E"
      self.low_e_string_counter =+ 1
    elsif stringpack_params === "A"
      self.a_string_counter =+ 1
    elsif stringpack_params === "D"
      self.a_string_counter =+ 1
    elsif stringpack_params === "G"
      self.g_string_counter =+ 1
    elsif stringpack_params === "B"
      self.b_string_counter =+ 1
    elsif stringpack_params === "High E"
      self.high_e_string_counter =+ 1
    end
  end
  
end
