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

local function is_math()
	return vim.fn["vimtex#syntax#in_mathzone"]() == 1
end

local function not_math()
	return vim.fn["vimtex#syntax#in_mathzone"]() ~= 1
end

local in_math = { condition = is_math }

local snippets = {
	s("beg", fmt([[
  \begin{{{}}}
    {}
  \end{{{}}}
  ]], { i(1), i(0), rep(1) })),
	s("thm",    { t { "\\begin{theorem}", "\t" }, i(0), t { "", "\\end{theorem}", "" } }),
	s("cor",    { t { "\\begin{corollary}", "\t" }, i(0), t { "", "\\end{corollary}", "" } }),
	s("proof",  { t { "\\begin{proof}", "\t" }, i(0), t { "", "\\end{proof}", "" } }),
	s("def",    { t  "\\begin{definition}[", i(1), t {"]", "\t" }, i(0), t { "", "\\end{definition}", "" } }),
	s("rm",     { t "\\textrm{", i(1), t "}", i(0) }),
	s("bf",     { t "\\textbf{", i(1), t "}", i(0) }),
	s("mcal",   { t "\\mathcal{", i(1), t "}", i(0) }, in_math),
	s("bb",     { t "\\mathbb{", i(1), t "}", i(0) }, in_math),
	s("mcal",   { t "\\mathcal{", i(1), t "}", i(0) }, in_math),
	s("lr",     { t "\\left(", i(1), t "\\right)", i(0) }),
	s("lr(",    { t "\\left(", i(1), t "\\right)", i(0) }),
	s("lr{",    { t "\\left\\{", i(1), t "\\right\\}", i(0) }),
	s("lr|",    { t "\\left|", i(1), t "\\right|", i(0) }),
	s("lrfl",   { t "\\left\\lfloor ", i(1), t " \\right\\rfloor", i(0) }, { condition = is_math }),
	s("lim",    { t "\\lim_{", i(1, "n \\to \\infty"), t "} ", i(0) }, { condition = is_math }),
	s("limsup", { t "\\limsup_{", i(1, "n \\to \\infty"), t "} ", i(0) }, { condition = is_math }),
	s("liminf", { t "\\liminf_{", i(1, "n \\to \\infty"), t "} ", i(0) }, { condition = is_math }),
	s("uuu",    { t "\\bigcup_{", i(1, "n = 1"), t "}^{", i(2, "\\infty"), t "} ", i(0) }, { condition = is_math }),
	s("nnn",    { t "\\bigcap_{", i(1, "n = 1"), t "}^{", i(2, "\\infty"), t "} ", i(0) }, { condition = is_math }),
}

local autosnippets = {
	s("mk",    { t "$", i(1), t "$", i(0) }),
	s("dm",    { t { "\\[", "\t" }, i(0), t { ".", "\\]" } }, { condition = not_math }),
	s("neq",   { t("\\neq") }, { condition = is_math }),
	s("ooo",   { t "\\infty" }, { condition = is_math }),
	s("...",   { t "\\ldots" }, { condition = is_math }),
	s("floor", { t "\\lfloor ", i(1), t " \\rfloor", i(0) }, { condition = is_math }),
	s("dint",  { t "\\int_{", i(1), t "}^{", i(2), t "} ", i(3), t " \\,", i(4, "dx") }, { condition = is_math }),
	s("dsum",  { t "\\sum_{", i(1, "n = 1"), t "}^{", i(2, "\\infty"), t "} ", i(0) }, { condition = is_math }),
	s("func",  { i(1, "f"), t " : ", i(2, "\\R"), t " \\to ", i(3, "\\R") }, { condition = is_math }),
	s("bar",   { t("\\overline{"), i(1), t "}", i(0) }, { condition = is_math }),
	s("hat",   { t("\\hat{"), i(1), t "}", i(0) }, { condition = is_math }),
	s({ trig = "compl", wordTrig = false}, { t("^{c}") }, { condition = is_math }),
	s({ trig = "inv", wordTrig = false }, { t "^{-1}", i(0) }, { condition = is_math }),
	s({ trig = "__", wordTrig = false }, { t "_{", i(1), t "}", i(0) }, { condition = is_math }),
	s({ trig = "^^", wordTrig = false }, { t "^{", i(1), t "}", i(0) }, { condition = is_math }),
	-- s({ trig = ">>", wordTrig = false }, { t "\\gg  ", i(0) }, { condition = is_math }),
	-- s({ trig = "<<", wordTrig = false }, { t "\\ll  ", i(0) }, { condition = is_math }),
}

return snippets, autosnippets
