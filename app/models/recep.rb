require 'httparty'
class Recep < ActiveRecord::Base
  include HTTParty
  base_uri "http://food2fork.com/api"
  default_params key: 'e94d6466edc75b92ab48dd1921a01e2d'
  format :json
  def self.for keyword
     get("/search", query: {q: keyword})["recipes"]
  end
end
