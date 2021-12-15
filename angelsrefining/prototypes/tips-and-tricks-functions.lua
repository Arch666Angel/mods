tnt = {} --init table

tnt.get_item_from_name = function(item_name, item_type, before, ending)
  before = before or "- "
  ending = ending or (before == "\n[font=default-bold]" and "[/font]:\n") or "\n"

  item_type = item_type or "item"
  return {
    "",
    before .. "[img=" .. item_type .. "/" .. item_name .. "] ",
    {item_type .. "-name." .. item_name},
    ending
  }
end

tnt.get_items_from_name = function(item_name, item_type, mid_string, before, ending)
  --item_name and mid_string can be arrays, as long as name is longer than mid it will be fine
  
  --set default
  before = before or "- "
  mid_string = mid_string or ""
  ending = ending or (before == "\n[font=default-bold]" and "[/font]:\n") or "\n"

  local arr = {""} 
  if type(item_name) == "table" then
    for ind, i_name in pairs(item_name) do
      --name = i_name
      --mid = mid_string[ind] or mid_string or ""
      --arr[#arr+1] = ((ind==1) and before .. " [img=" or " [img=" ) .. item_type .. "/" .. name .. "] "
      --arr[#arr+1] = {item_type .. "-name." .. name}
      --arr[#arr+1] = (ind == #item_name) and ending or (" " .. mid_string)
      table.insert(arr, tnt.get_item_from_name(i_name, item_type, ind == 1 and before or "", ind == #item_name and ending or mid_string))
    end
  else --use single case
    angelsmods.functions.tnt.get_item_from_name(item_name, item_type, before, ending)
  end
  return arr
end

tnt.number_to_string = function(number, decimal_places)
  -- returns a string representation of a number, rounded to a certain amount of decimal places (default to 0)
  if decimal_places == nil then decimal_places = 0 end
  local decimal_factor = 10^decimal_places
  return string.format((decimal_places>0) and ("%."..decimal_places.."f") or "%d", math.floor(number*decimal_factor+0.5)/decimal_factor)
end

return tnt
