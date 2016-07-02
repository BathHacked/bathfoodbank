require 'open-uri'

module BathHacked
  class FoodBankApp < Sinatra::Base
    
    configure do |app|      
      set :views, settings.root + '/../views' 
      set :public_folder, settings.root + '/../static' 
      set :current_needs_list, ENV["CURRENT_NEEDS_LIST"]
    end
      
    get "/" do
      @items = fetch_list
      erb :index
    end  
                    
    not_found do
      'Not Found'
    end 
    
    get "/data" do
      content_type "application/json"
      {
        name: "Bath Foodbank Shopping List",
        items: fetch_list,
        licence: "https://creativecommons.org/licenses/by/4.0/",
        organisation: {
          name: "Bath Food Bank",
          homepage: "http://bath.foodbank.org.uk/",
          telephone: "01225 463549"  
        }
      }.to_json      
    end
    
    def fetch_list
      items = []
      begin
        doc = Nokogiri::HTML( open( settings.current_needs_list ) )
        doc.search(".items .item").search("p").each do |item| items << item.content end
      rescue => e
        puts e
      end
      items
    end
      
  end
end