local ls = require("luasnip")

local s = ls.snippet
local sn = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node

local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep

local snippets, autosnippets = {}, {}

local mfs = s("myFirstSnippet", {t("Hi that is my first snippet!")})

local mySecondSnippet = s("mss", fmt([[
local {} = function({})
  {}
end
]], {
    i(1, "var"),
    i(2, "arg"),
    i(3, "-- TODO: write code")
  }))

table.insert(snippets, mfs)
table.insert(snippets, mySecondSnippet)

local myFirstAutoSnippet = s({trig = "digit%d", regTrig = true}, t("this was created automatically"))
table.insert(autosnippets, myFirstAutoSnippet)

return snippets, autosnippets
