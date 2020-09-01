class PotterService

  def search_by(house)
    response = connection.get('characters') do |f|
      f.headers['Content-Type'] = 'application/json'
      f.params['key']           = ENV['POTTER_API_KEY']
      f.params['house']         = house
    end

    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def connection
    Faraday.new('https://www.potterapi.com/v1/')
  end
end
