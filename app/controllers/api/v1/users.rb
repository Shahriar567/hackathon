module API
  module V1
    class Users < Grape::API
      include API::V1::Defaults
      resource :users do
      desc "Return all users"
        get "" do
          User.all
        end
      desc "Return a user"
        params do
          requires :id, type: String, desc: "ID of the user"
        end
        get ":id" do
          User.where(id: permitted_params[:id]).first!
        end
      end
      resource :users do
        desc 'Create a user.'
         params do
           requires :first_name, type: String, desc: 'First name.'
           requires :last_name, type: String, desc: 'Last name.'
           requires :email, type: String, desc: 'lati.'
         end
         post do
          puts params
          user = User.create!(first_name: params[:first_name], last_name: params[:last_name], email: params[:email])
          User.find(user.id)
         end
      end
    end
  end
end
