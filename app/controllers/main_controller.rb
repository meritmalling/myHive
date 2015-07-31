class MainController < ApplicationController

def index
end

def about
end

def beekeeping
  @month = params[:q]
  @info = month_info('january').text
  gon.monthinfo = @info
  puts :month
end

private

 def month_info search
  response = RestClient.get(
    "http://www.utahcountybeekeepers.org/#{search}.html")
  html = response.body
  document = Nokogiri::HTML(html)
  month = document.css('#text p')
  end


end