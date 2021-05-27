
visitas = [1000, 800, 250, 300, 500, 2500]

def promedio(array)
    n = array.count
    x = 0
    array.each do |i|
        x += i
    end
    prom = x / n
end

a = promedio(visitas)

print a
print "\n"