def romans n , m

digits1 = "IVXLCDM"

digits2 = {'I'=>1,   'V'=>5,  'X'=>10, 'L' =>50, 
	       'C'=>100, 'D'=>500,'M'=>1000}

arabic = 0
i = 0

for i in 0..n.length-2

	arabic = digits1.index(n[i]) < digits1.index(n[i+1]) ?
					           arabic - digits2[n[i]]      :
					           arabic + digits2[n[i]]

end

arabic = arabic + digits2[n[n.length-1]]
puts "input: #{n} #{m} arabic #{arabic}" 
return arabic

end