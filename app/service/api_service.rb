class ApiService
  BASE_URL = 'http://localhost:3000'

  def self.get(endpoint)
    response = RestClient.get("#{BASE_URL}/#{endpoint}")
    response
  end

  def self.post(endpoint, params)
    response = RestClient.post("#{BASE_URL}/#{endpoint}", params.to_json, content_type: :json, accept: :json)
    response
  end

  def self.put(endpoint, params)
    response = RestClient.put("#{BASE_URL}/#{endpoint}", params.to_json, content_type: :json, accept: :json)
    response
  end

  def self.delete(endpoint, params)
    response = RestClient.delete("#{BASE_URL}/#{endpoint}", content_type: :json, accept: :json)
    response
  end
end
