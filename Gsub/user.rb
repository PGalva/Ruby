class User
  attr_reader :phone, :email, :id

  def initialize(phone,email,id)
  @phone = phone
  @email = email
  @id = id

  trying_gsub
  validate_email
  validate_id

  end

  def self.create(phone,email,id)





  private

  def trying_gsub
    @phone.gsub(/D/, "") if @phone   
  end

  def validate_email
    @email.downcase if @email
  end

  def validate_id
    @id.gsub(/D/, "") if @@id
  end

end