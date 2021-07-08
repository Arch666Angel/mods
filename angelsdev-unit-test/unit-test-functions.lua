local functions = {}

function functions.print_msg(msg, indentation)
  -- indentation should not be used by unit tests, this is only used for the unit test interface!
  indentation = indentation and indentation >= 0 and math.floor(indentation + 0.5) or 2
  print("angelsdev-unit-test:" .. string.format("%" .. 2 * indentation + 1 .. "s", " ") .. msg)
end

return functions