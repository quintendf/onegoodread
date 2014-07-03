namespace :scrape_feed do 

 task :feed => :environment do
    puts "this ran"
    response = HTTParty.get('http://www.rssmix.com/u/4230029/rss.json')
    json = JSON.parse(response.body)
    linksArray = Array.new    
    json['channel']['item'].each do |item|
      linksArray.push(item['link'])
    end
    row = Article.create!({
        :link => linksArray
        })
  end
  end