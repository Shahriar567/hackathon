module API
  module V1
    class Projects < Grape::API
      include API::V1::Defaults
      include V1::Helpers
      resource :projects do
        desc 'Return list of Projects'
        get "" do
          Project.all
        end
        desc 'Return a specific project'
        route_param :id do
          get do
            Project.find(params[:id])
          end
        end
      end
      resource :projects do
        desc 'Create a Project.'
         params do
           requires :longi, type: String, desc: 'longi.'
           requires :lati, type: String, desc: 'lati.'
           requires :has_assignment, type: Boolean, desc: 'has_assignment.'
         end
         post do
          project = Project.create!(longi: params[:longi], lati: params[:lati], has_assignment: params[:has_assignment])
          Project.find(project.id)
         end
      end
    end
  end
end
