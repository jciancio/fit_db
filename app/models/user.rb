class User < ActiveRecord::Base
  GENDER = %w(m f)
  enum gender: [:m, :f]
  validates_inclusion_of :gender, in: GENDER

  def to_s
    "#{first_name} #{last_name}"
  end
end
