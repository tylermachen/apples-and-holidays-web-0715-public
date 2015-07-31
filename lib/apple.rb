def apple_picker_with_select(fruit_list)
  fruit_list.select { |f| f == "apple" }
end

def apple_picker_with_collect(fruit_list)
  fruit_list.collect { |f| f if f == "apple" }.compact
end