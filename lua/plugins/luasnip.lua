return {
  "L3MON4D3/LuaSnip",
  version = "v2.*", -- Follow latest major release
  build = "make install_jsregexp", -- optional, for regex features
  dependencies = { "rafamadriz/friendly-snippets" }, -- optional, for pre-made snippets
  config = function()
    require("luasnip.loaders.from_vscode").lazy_load()
  local ls = require("luasnip")
  local s = ls.snippet
  local t = ls.text_node
  local i = ls.insert_node

  ls.add_snippets("html", {
    s("!", {
      t({
        "<!DOCTYPE html>",
        '<html lang="en">',
        "<head>",
        '    <meta charset="UTF-8">',
        '    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
        "    <title>",
      }),
      i(1, "Document"),
      t({
        "</title>",
        "</head>",
        "<body>",
        "    ",
      }),
      i(0),
      t({
        "",
        "</body>",
        "</html>",
      }),
  })
})
ls.add_snippets("cpp", {
    s("cpp", {
        t({
            "#include <iostream>",
            "",
            "int main() {",
            " ", -- 2 spaces indentation
        }),
        i(1),  -- Cursor starts here
        t({
            "",
            " return 0;",
            "}",
        }),
    }),
})
end,
}

