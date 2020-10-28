class User
  def initialize(name, bio, age, password)
    @user_profile = UserProfile.new(name, bio, age, password)
    @authenticated = false
    @password = password
  end

  def authenticate(candidate_password)
    return @authenticated = true if candidate_password == @password
    false
  end

  def profile
    @user_profile.profile if @authenticated == true
  end
end

class UserProfile
  def initialize(name, bio, age, password)
    @name = name
    @bio = bio
    @age = age
  end

  def profile
    "Please ""#{@name}, born in #{birth_year}: #{@bio}"
  end

  private
  def birth_year
    Time.new.year - @age
  end
end
