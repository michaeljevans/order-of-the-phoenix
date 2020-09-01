class HouseMembersFacade
  attr_reader :house, :members

  def initialize(house)
    @service = PotterService.new
    @house   = house
    @members = order_of_the_phoenix_members
  end

  def house_members(house)
    members = @service.search_by(house)
    members.map { |member_info| Member.new(member_info) }
  end

  def order_of_the_phoenix_members
    house_members(@house).find_all do |member|
      member.phoenix == true
    end
  end
end
