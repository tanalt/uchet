class User < ActiveRecord::Base
  validates :name, presence: true, length: {maximum: 100, too_long: " має бути не довше 100 символів  "}
  has_secure_password
  validates :password, length:  {:minimum => 6,
                                 :too_short => " має бути не менше 6 символів"}
  before_create :create_remember_token
  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end
  def User.encrypt(token)
    Digest::SHA1.hexdigest(token.to_s)
  end
  private
  def create_remember_token
    self.remember_token = User.encrypt(User.new_remember_token)
  end

end
