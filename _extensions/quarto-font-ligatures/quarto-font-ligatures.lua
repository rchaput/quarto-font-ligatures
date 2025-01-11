-- Define ligatures
local ligatures = {
  ["->"] = "→",
  ["=>"] = "⇒",
}


-- Replace ligatures
local function Str(el)
  local ligature = ligatures[el.text]
  if ligature ~= nil then
    -- We found a ligature!
    quarto.log.debug("[quarto-font-ligatures] Replacing", el.text, "with", ligature)
    el.text = ligature
    return el
  end
  -- Else, no ligature found, we do not change the element
  -- Returning `nil` tells Quarto that the element is unchanged
  return nil
end


return {
  { Str = Str },
}
