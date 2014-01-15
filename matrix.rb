def determinant(matrix)
  
  return matrix.first.first if matrix.length == 1
  return matrix[0][0]*matrix[1][1]-matrix[0][1]*matrix[1][0] if matrix.length == 2
  result = 0
  (0...matrix.length).each{ |i| result += (-1)**i*matrix[0][i]*determinant(minor(matrix, i))}
  result
end

def minor(square, i)
  a = square.dup
  a.shift
  a = a.transpose
  a.slice!(i)
  a = a.transpose
  return a
end

#m1 = [ [1, 3], [2,5]]
m2 = [ [2,5,3], [1,-2,-1], [1, 3, 4]]

puts determinant(m2)
puts m2.inspect
#puts determinant(m2)
#puts minor(m1, 0)
