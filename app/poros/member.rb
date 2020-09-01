class Member
  attr_reader :name, :role, :house, :patronus, :phoenix

  def initialize(member_info)
    @name     = member_info[:name]
    @role     = member_info[:role] if member_info[:role]
    @house    = member_info[:house]
    @patronus = member_info[:patronus] if member_info[:patronus]
    @phoenix  = member_info[:orderOfThePhoenix]
  end
end
