tnt = {} --init table
tnt.get_item_from_name = function(item_name, item_type, before)
  before = before or "- "
  local ending="\n"
  if before=="\n[font=default-bold]" then ending="[/font]:\n" end
  item_type = item_type or "item"
  return {
    "",
    before .. "[" .. "img=" .. item_type .. "/" .. item_name .. "] ",
    {item_type .. "-name." .. item_name},
    ending
  }
end

tnt.get_items_from_name = function(item_name, item_type, mid_string, before) --item_name and mid_string can be arrays, as long as name is longer than mid it will be fine
  local arr = {""} --set default
  local ending="\n" --set default
  if before=="\n[font=default-bold]" then ending="[/font]:\n" end
    before = before or "- " --set default
  if type(item_name)=="table" then
    for ind, i_name in pairs(item_name) do
      name = i_name
      mid = mid_string[ind] or mid_string or ""
      arr[#arr+1] = ((ind==1) and before .. " [img=" or " [img=" ).. item_type .. "/" .. name .. "] "
      arr[#arr+1] = {item_type .. "-name." .. name}
      arr[#arr+1] = (ind == #item_name) and ending or (" " .. mid_string)
    end
  else --use single case
    angelsmods.functions.tnt.get_item_from_name(item_name, item_type, before)
  end
  return arr
end

return tnt
