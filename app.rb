require 'sinatra'
require_relative 'order_integration'
require_relative 'odm_send'

post 'orders/:order_number/integrate' do
    order_number = params[:order_number]
    integrator = Integrator.new(order_number)
    integrator.approve
end

status 200
{ message: "Order integration process initiated." }.to_json
