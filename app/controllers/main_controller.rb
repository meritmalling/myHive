class MainController < ApplicationController

def index
end

def about
end

def beekeeping
  @month = params[:q]
  if @month
    @info = month_info(@month).text
    gon.monthinfo = @info
  end
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