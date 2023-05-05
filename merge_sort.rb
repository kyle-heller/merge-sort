def merge_sort(array)
  if array.length <= 1
    array
  else
    left = merge_sort(array[0...array.length / 2])
    right = merge_sort(array[array.length / 2..])
    merge(left, right)
  end
end

def merge(left, right, merged = [])
  until left.empty? || right.empty?
    if left.first <= right.first
      merged << left.shift
    elsif left.first >= right.first
      merged << right.shift
    end
  end
  merged + left + right
end

arr = []
50.times do
  arr << rand(100)
end

print merge_sort(arr)