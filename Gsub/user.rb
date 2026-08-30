class User
  attr_reader :phone, :email, :id

  initialize(@phone,@email,@id)
  phone = @phone
  email = @email
  id = @id

  self.create(phone,email,id)





  private

  def trying_gsub
    @phone.gsub(/D/, "") if @phone   
  end

end