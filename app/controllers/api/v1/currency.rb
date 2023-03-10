module API
  module V1
    class Currency < Grape::API
      include API::V1::Defaults
      resource :converter do
        get :exchange do
          {:word => params[:word], :sentiment => "unkown"}.to_json
        end
      end

      # format :json
      # rescue_from :all

      # error_formatter :json, lambda { |message, backtrace, options, env|
      #   {
      #     status: 'failed',
      #     message: message,
      #     error_code: 123
      #   }.to_json
      # }
      # helpers do
      #   def get_exchange_rate(currency)
      #     case currency
      #     when 'NTD'
      #       30
      #     else
      #       raise StandardError.new "no conversion found for currency '#{currency}'"
      #     end
      #   end

      # end

      # resource :converter do
      #   params do
      #     requires :amount, type: Float
      #     requires :to_currency, type: String

      #   end
      #   get :exchange do
      #     convertered_amount = params[:amount] *
      #       get_exchange_rate(params[:to_currency])
      #     {
      #       amount: convertered_amount,
      #       currency: params[:to_currency]
      #     }

      #   end

      # end
    end
  end
end
