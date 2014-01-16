def romans n 

digits1 = "IVXLCDM"

digits2 = {'I'=>1,   'V'=>5,  'X'=>10, 'L' =>50, 
	       'C'=>100, 'D'=>500,'M'=>1000}

arabic = 0
for i in 0..n.length-2
  puts "#{i}: #{n[i].inspect}"
  puts "v: #{digits2[n[i]]}"
end
i += 1
puts "i is:#{i}" 

arabic = arabic + digits2[n[i]]

return arabic

end