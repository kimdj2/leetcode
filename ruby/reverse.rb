# @param {Integer} x
# @return {Integer}
def reverse(x)
  result = 0
  if x < 0 
      result = x.to_s.reverse.to_i * -1
  else
      result = x.to_s.reverse.to_i
  end
  if result < -2 ** 31 || result > 2 ** 31 -1
      result = 0
  else
      result
  end
end