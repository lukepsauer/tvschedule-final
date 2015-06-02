class TVSchedule < Sinatra::Base
  get '/' do
    if session[:user] == nil
      erb :responsive, :layout => false
    else
      erb :user, :layout => false
    end
  end

  get '/tv' do
    erb :tv
  end

  get '/cable' do
    erb :cable
  end

  get '/user' do
    redirect '/'
  end

  get '/personalSchedule' do
    @user = User.first(:token => session[:user])
    erb :editSch, :layout => false
  end

  post '/editschedule' do
    @user = User.first(:token => session[:user])
    @user.class1 = params[:c1]
    @user.class2 = params[:c2]
    @user.class3 = params[:c3]
    @user.class4 = params[:c4]
    @user.class5 = params[:c5]
    @user.class6 = params[:c6]
    @user.class7 = params[:c7]
    @user.class8 = params[:c8]
    @user.classType1 = params[:type1].to_i
    @user.classType2 = params[:type2].to_i
    @user.classType3 = params[:type3].to_i
    @user.classType4 = params[:type4].to_i
    @user.classType5 = params[:type5].to_i
    @user.classType6 = params[:type6].to_i
    @user.classType7 = params[:type7].to_i
    @user.classType8 = params[:type8].to_i
    @user.save
    redirect '/personalSchedule'
  end

end