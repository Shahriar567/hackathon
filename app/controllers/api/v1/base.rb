require "grape-swagger"


module API
  module V1
    class Base < Grape::API
      mount API::V1::Users
      mount API::V1::Events
      mount API::V1::Currency
      mount API::V1::Projects
      mount API::V1::Assignments
      mount API::V1::Scores
      mount API::V1::Communities

      # add_swagger_documentation(
      #   api_version: "v1",
      #   hide_documentation_path: true,
      #   mount_path: "/api/v1/swagger_doc",
      #   hide_format: true
      # )

      add_swagger_documentation

    end
  end
end
