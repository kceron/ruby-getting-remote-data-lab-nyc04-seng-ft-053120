require 'net/http'
require 'open-uri'
require 'json'

class GetRequester

    URL = "https://learn-co-curriculum.github.io/json-site-example/endpoints/people.json"

    #This class should be able to initialize with a string URL
    def initialize(url)
        @url = url
    end

    #sends a GET request to the URL passed in on initialization
    #This method should return the body of the response
    def get_response_body
        uri = URI.parse(URL)
        response = Net::HTTP.get_response(uri)
        response.body
    end

    def parse_json
        JSON.parse(self.get_response_body)
    end
end

=begin
The GetRequester class should have a parse_json method should use 
get_response_body to send a request, then return a Ruby Array or Hash 
made up of data converted from the response of that request.
=end 