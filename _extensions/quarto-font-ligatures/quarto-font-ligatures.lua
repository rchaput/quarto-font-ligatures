-- Define ligatures
local ligatures = {
  ["->"] = "→",
  ["=>"] = "⇒",
  ["-->"] = "⟶",
  ["==>"] = "⟹",
  ["<-"] = "←",
  ["<--"] = "⟵",
  ["<="] = "⇐",
  ["<=="] = "⟸",
  ["<->"] = "↔",
  ["<=>"] = "⇔",
  ["<-->"] = "⟷",
  ["<==>"] = "⟺",

  -- Because of Quarto's own filters, the `--` might not be recognized.
  -- They are internally replaced with `–` (which is not the same as `-`!).
  ["–>"] = "⟶",
  ["<–"] = "⟵",
  ["<–>"] = "⟷",
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
