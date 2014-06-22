require 'fileutils'

# http://qiita.com/hyuki/items/e06cdceb6f5096f76bb2
# http://www.rubylife.jp/ini/string_class/index12.html
# http://www.rubylife.jp/ini/string_class/index12.html
# http://blog.livedoor.jp/dankogai/archives/51026593.html

Dir.glob("Duo-Base/*.mp3") do |filename|
  # puts filename
  newname = filename.gsub("¥s", "-")
  array = filename.gsub(".", "-").split("-")
 
  # array[3] = sprintf("%02d", array[3].to_i)
  # array[4] = sprintf("%03d", array[4].to_i)

  newname = array[0] + "-" + 
            array[1] + "-" + 
            array[2] + "-" + 
            sprintf("%03d", array[3].to_i) + "-" + 
            sprintf("%03d", array[4].to_i) + "." + 
            array[5]  

  puts newname
  #puts ""
  # puts array[1]
  # puts array[2]
  # puts array[3]
  # puts array[4]


  # puts newname
  unless newname == filename then
    FileUtils.mv(filename, newname)
    # FileUtils.rm(filename)
  end
end




