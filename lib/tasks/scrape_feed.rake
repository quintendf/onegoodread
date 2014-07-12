namespace :scrape_feed do 

 task :feed => :environment do
    puts "this ran"
    response = HTTParty.get('http://www.rssmix.com/u/4230029/rss.json')
    json = JSON.parse(response.body) 
    json['channel']['item'].each do |item|
      unless(item['link'].include?("longreads.com"))
        row = Article.create!({
          :link => item['link']
          })
      end
    end
  end
  end