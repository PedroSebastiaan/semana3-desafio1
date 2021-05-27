n = ARGV[0].to_i

data = open("data.csv", "r").readlines
output = open("procesos_filtrados.data", "w")

data.reject! {|x| x.empty?}

a = (data.map do |x| x.to_i end)

a.each do |i|
    output.puts(i.to_i) if i.to_i > n
end


