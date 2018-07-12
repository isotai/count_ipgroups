  filepass = "./runQuery_02.txt"  
  file = open(filepass)
  lines = file.read().split("\n")
  lineDementionalArray = []
  vailedIpg = []
  invailedIpg = []  
  
  lines.each_with_index {|line, i| 
    eachLines = lines[i].split(" ")
    lineDementionalArray << eachLines
  }

  lineDementionalArray.each_with_index{|array,j|
    if array[4] == "0" then
      vailedIpg << array  
    elsif array[4] == '1'||'2' then
      invailedIpg << array
    else 
      print "error in #{j}"
    end
  }
  p "vaild Ipg count is #{vailedIpg.size}"
  p "invalid Ipg count is #{invailedIpg.size}"

  File.open("vailedIpg.txt", "w") do |f| 
    vailedIpg.each {|array|
    f.puts("=====================")
    f.puts(array)

    }
  end
    
  file.close
