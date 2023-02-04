require 'json'


module API
  module V1
    class Scores < Grape::API
      include API::V1::Defaults

      @foo = {}

      # Get the aggregate users score

      helpers do

        def get_user_score(user_id)
          @foo = User.find(user_id)
          assignments = Assignment.where(user_id: user_id)
          total_score = 0

          assignments.each do | assignment |
            puts assignment.points
            total_score += assignment.points.to_i
          end

          @foo.score = total_score
          @foo

        end

      end


      resource :scores do
        # desc 'Return list of assignments'
        # get "" do
        #   Assignment.all
        # end
        desc 'Return a score for a user'
        route_param :id do
          get do
            assignments = get_user_score(params[:id])
            assignments
          end
        end
      end
      # resource :assignments do
      #   desc 'Create a assignment'
      #    params do
      #      requires :project_id, type: Integer, desc: 'project_id.'
      #      requires :user_id, type: Integer, desc: 'user_id.'
      #    end
      #    post do
      #     check_project_exists(params[:project_id])
      #     check_user_exists(params[:user_id])
      #     assignment = Assignment.create!(project_id: params[:project_id], user_id: params[:user_id])
      #     Assignment.find(assignment.id)
      #    end
      # end
    end

  end
end
