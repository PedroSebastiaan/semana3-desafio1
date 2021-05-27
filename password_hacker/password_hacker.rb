d = ARGV[0]
l = ARGV[1]

num = ["", "1", "12", "123"]

data = open("#{d}").readlines

data.reject! {|x| x.empty?}

a = (data.map do |x| x.chomp end)

b = []

n = a.count
m = num.count

n.times do |i|
    m.times do |j|
        b.push a[i] + num[j]
        j += 1
    end
end

i = 0
while l != b[i]
    i += 1
end

print "Para descifrar la clave se requirieron #{i + 1} intentos."


print "\n"

