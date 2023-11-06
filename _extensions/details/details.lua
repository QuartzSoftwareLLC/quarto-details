function Div(el) 

  local details = el.attributes["details"]
  local content = el.content

  if details then
    if el.classes[1] == "cell" then
      table.insert(content, 1, pandoc.RawInline("html", "<details>"))
      table.insert(content, pandoc.RawInline("html", "</details>"))
    end
  end

  return content
end