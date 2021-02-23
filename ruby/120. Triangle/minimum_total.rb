# @param {Integer[][]} triangle
# @return {Integer}
def minimum_total(triangle)
  triangle.each_with_index  do |arr, t_idx|
    next if t_idx == 0
    arr.each_index do |a_idx|
      prev_arr = triangle[t_idx-1]
      if a_idx == 0
        arr[a_idx] += prev_arr[0] 
      elsif a_idx == arr.size - 1
        arr[a_idx] += prev_arr[-1]
      else
        arr[a_idx] += [prev_arr[a_idx-1], prev_arr[a_idx]].min
      end
    end
  end
  triangle.last.min
end