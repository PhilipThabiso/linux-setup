local ls = require("luasnip")
local s = ls.snippet
local i = ls.insert_node
local fmt = require("luasnip.extras.fmt").fmt

return {
	s(
		"ferrf",
		fmt(
			[[
    if err := {}; err != nil {{
        log.Fatal(err)
    }}
  ]],
			{
				i(1, "someFunk()"),
			}
		)
	),
}
