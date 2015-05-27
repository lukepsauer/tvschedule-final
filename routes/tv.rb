class TVSchedule < Sinatra::Base
  get '/' do
    erb :responsive, :layout => false
  end

  get '/tv' do
    erb :tv
  end

  get '/cable' do
    erb :cable
  end
end