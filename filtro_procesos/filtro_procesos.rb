n = ARGV[0].to_i

data = open("data.csv").readlines

data.reject! {|x| x.empty?}

a = (data.map do |x| x.to_i end)

b = []

x = a.count

x.times do |i|
    if a[i] > n
        b.push a[i]
    end
end


open("procesos_filtrados.data", "w") do |csv|
    csv << b
end

