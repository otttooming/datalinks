require 'voog_api'

if ARGV
  if ARGV[0]
    SITE = ARGV[0]
  else
    SITE = 'edicy.local'
  end

  if ARGV[1]
    TOKEN = ARGV[1]
  else
    TOKEN = 'b27f2c3f6193d99cc5d3604a54934c32'
  end
end
begin
  client = Voog::Client.new(SITE, TOKEN)

  assets = client.layout_assets
  layouts = client.layouts

  puts "Found #{assets.count} assets and #{layouts.count} layouts."

  assets.each do |asset|
    print "Deleting asset '#{asset.filename}'."
    begin
      client.delete_layout_asset(asset.id)
    rescue
      print " <- deleting failed!"
    ensure
      print "\n"
    end
  end

  layouts.each do |layout|
    print "Deleting #{layout.component ? 'component' : 'layout'} '#{layout.title}'."
    begin
      client.delete_layout(layout.id)
    rescue
      print " <- deleting failed!"
    ensure
      print "\n"
    end
  end
rescue => e
  puts "Something went wrong!"
end

