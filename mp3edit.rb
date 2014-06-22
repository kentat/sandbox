require 'mp3info'


Dir.glob("Duo-Base/*.mp3") do |filename|

	Mp3Info.open(filename){|mp3|
	  str = mp3.tag.title;

	  array = str.split(" ")
	  array = array[1].split("-")
	  
	  str = "Section-"+sprintf("%03d",array[0].to_i) + "-" + sprintf("%03d",array[1].to_i) 
	  # puts 
	  # puts array[1] 
	  


	  # mp3.tag.title  
	  # puts mp3.tag.title  
	  # puts mp3.tag.artist  
	  # puts mp3.tag.album
	  # puts mp3.tag.tracknum
	  mp3.tag.title = str
	  # mp3.tag.artist = "アルバム名"
	}

end




# tag = ID3Lib::Tag.new('DuoBase/1-1.mp3')

# puts tag=>title


#require 'id3lib'
#tag = ID3Lib::Tag.new('shy_boy.mp3') 
# Set year tag.year   
#=> 2000 tag.year = 2005  
# Apply changes tag.update! 
