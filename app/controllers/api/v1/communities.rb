module API
  module V1
    class Communities < Grape::API
      include API::V1::Defaults
      resource :communities do
        desc "Return all communities"
        puts "Shahriar"
        get "" do
          Community.all
        end
        get "/ranking", type: Hash do

          data = '[
          {
            "community": "North West",
            "rating": 3700
          },
          {
            "community": "North East",
            "rating": 1200
          },
          {
            "community": "South West",
            "rating": 820
          },
          {
            "community": "South East",
            "rating": 1500
          },
          {
            "community": "Central",
            "rating": 2000
          }]'
          JSON.parse(data)

        end
      end
    end
  end
end
