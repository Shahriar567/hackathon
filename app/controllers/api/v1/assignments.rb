module API
  module V1
    class Assignments < Grape::API
      include API::V1::Defaults


      helpers do
        def check_project_exists(project_id)
          Project.find(project_id)
        end

        def check_user_exists(user_id)
          User.find(user_id)
        end

      end


      resource :assignments do
        desc 'Return list of assignments'
        get "" do
          Assignment.all
        end
        desc 'Return a specific assignment'
        route_param :id do
          get do
            Assignment.find(params[:id])
          end
        end
      end
      resource :assignments do
        desc 'Create a assignment'
         params do
           requires :project_id, type: Integer, desc: 'project_id.'
           requires :user_id, type: Integer, desc: 'user_id.'
         end
         post do
          check_project_exists(params[:project_id])
          check_user_exists(params[:user_id])
          assignment = Assignment.create!(project_id: params[:project_id], user_id: params[:user_id])
          Assignment.find(assignment.id)
         end
      end
    end

  end
end
