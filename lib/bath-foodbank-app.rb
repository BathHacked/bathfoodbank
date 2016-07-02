module BathHacked
  class FoodBankApp < Sinatra::Base
    
    configure do |app|      
      set :views, settings.root + '/../views' 
      set :public_folder, settings.root + '/../static' 
    end
      
    get "/" do
      erb :index
    end  
                    
    not_found do
      'Not Found'
    end 
      
  end
end