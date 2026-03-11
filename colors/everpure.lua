-- Everpure colorscheme for Neovim
-- Warm earthy palette from Everpure design system
-- Supports light and dark via vim.o.background

vim.cmd 'highlight clear'
if vim.fn.exists 'syntax_on' then vim.cmd 'syntax reset' end
vim.g.colors_name = 'everpure'

local is_dark = vim.o.background == 'dark'

-- Palette
local p = {
  orange = '#FF7023',
  orange_100 = '#FFB792',
  orange_200 = '#FFA16C',
  orange_400 = '#AA4C17',
  orange_500 = '#803813',
  cinnamon = '#BD673D',
  cinnamon_100 = '#DEB49E',
  cinnamon_200 = '#D39A7D',
  cinnamon_400 = '#7E4528',
  cinnamon_500 = '#60341F',
  walnut = '#71584C',
  walnut_50 = '#E3DFDC',
  walnut_100 = '#B8ABA7',
  walnut_400 = '#4C3B33',
  walnut_500 = '#392D26',
  mint = '#C5E4CC',
  mint_400 = '#849888',
  mint_600 = '#424C44',
  moss = '#8FA596',
  moss_100 = '#C8D2CA',
  moss_400 = '#5F6E65',
  moss_500 = '#49534B',
  basil = '#5A6359',
  basil_100 = '#ABB1AD',
  basil_200 = '#929791',
  basil_400 = '#3C413B',
  rose = '#F2CDC4',
  rose_400 = '#A18983',
  quartz = '#DEA193',
  quartz_100 = '#EFD0CA',
  quartz_400 = '#956B63',
  quartz_600 = '#4A3631',
  clay = '#95685D',
  clay_400 = '#63443F',
  clay_600 = '#332320',
  cloud = '#FFF5E3',
  cloud_0 = '#FFFCF6',
  cloud_50 = '#FFFAF0',
  cloud_100 = '#FFF8ED',
  cloud_600 = '#56524D',
  stone = '#D0C8BA',
  stone_50 = '#F6F4F0',
  stone_100 = '#E6E3DB',
  stone_400 = '#8B857C',
  stone_600 = '#45433F',
  ash = '#2D2A27',
  ash_100 = '#979593',
  ash_200 = '#73716F',
  ash_400 = '#1E1C1A',
  ash_500 = '#171513',
  forest = '#3A6E4D',
  forest_lt = '#6BAF82',
  slate = '#435A78',
  slate_lt = '#7B9CC4',
  mauve = '#8B5574',
  mauve_lt = '#C48AAD',
  teal = '#377070',
  teal_lt = '#6AADAD',
  NONE = 'NONE',
}

-- Theme-dependent semantic colors
local c = is_dark
    and {
      bg = p.NONE,
      fg = p.stone_100,
      fg_dim = p.ash_200,
      fg_muted = p.ash_100,
      bg_float = p.ash_400,
      bg_visual = p.walnut_400,
      bg_search = p.cinnamon_500,
      bg_cursorline = p.ash,
      border = p.stone_600,
      comment = p.ash_200,
      string = p.moss,
      number = p.orange_100,
      keyword = p.cinnamon_100,
      kw_ctrl = p.cinnamon_200,
      kw_ret = p.quartz,
      func = p.cloud,
      type = p.cinnamon,
      constant = p.orange_200,
      variable = p.stone_100,
      param = p.rose,
      field = p.quartz,
      operator = p.stone,
      punct = p.stone_400,
      preproc = p.cinnamon,
      tag = p.orange,
      error = p.orange,
      warning = p.cinnamon,
      info = p.slate_lt,
      hint = p.moss,
      added = p.forest_lt,
      changed = p.cinnamon,
      removed = p.orange,
      diff_add_bg = p.basil_400,
      diff_chg_bg = p.walnut_500,
      diff_del_bg = p.clay_600,
      green = p.forest_lt,
      red = p.orange_100,
      blue = p.slate_lt,
      cyan = p.teal_lt,
      magenta = p.mauve_lt,
      yellow = p.orange,
    }
  or {
    bg = p.NONE,
    fg = p.ash,
    fg_dim = p.cloud_600,
    fg_muted = p.ash_100,
    bg_float = p.stone_50,
    bg_visual = p.stone_100,
    bg_search = p.cloud,
    bg_cursorline = p.cloud_100,
    border = p.stone,
    comment = p.ash_100,
    string = p.basil,
    number = p.orange_400,
    keyword = p.cinnamon_400,
    kw_ctrl = p.cinnamon_500,
    kw_ret = p.clay,
    func = p.walnut_400,
    type = p.cinnamon,
    constant = p.orange_400,
    variable = p.ash,
    param = p.quartz_400,
    field = p.quartz_400,
    operator = p.walnut,
    punct = p.stone_400,
    preproc = p.cinnamon_400,
    tag = p.orange_400,
    error = p.orange_400,
    warning = p.cinnamon,
    info = p.slate,
    hint = p.forest,
    added = p.forest,
    changed = p.cinnamon,
    removed = p.orange_400,
    diff_add_bg = p.mint,
    diff_chg_bg = p.cloud,
    diff_del_bg = p.quartz_100,
    green = p.forest,
    red = p.orange_400,
    blue = p.slate,
    cyan = p.teal,
    magenta = p.mauve,
    yellow = p.cinnamon_400,
  }

local hi = function(g, o) vim.api.nvim_set_hl(0, g, o) end
local inv = is_dark and p.ash_400 or p.cloud_0

-- Editor UI
hi('Normal', { fg = c.fg, bg = c.bg })
hi('NormalFloat', { fg = c.fg, bg = c.bg_float })
hi('FloatBorder', { fg = c.border, bg = c.bg_float })
hi('Cursor', { fg = c.bg, bg = p.orange })
hi('CursorLine', { bg = c.bg_cursorline })
hi('CursorLineNr', { fg = c.fg, bold = true })
hi('LineNr', { fg = c.fg_muted })
hi('SignColumn', { fg = c.fg_muted, bg = c.bg })
hi('ColorColumn', { bg = c.bg_cursorline })
hi('Visual', { bg = c.bg_visual })
hi('VisualNOS', { bg = c.bg_visual })
hi('Search', { fg = c.fg, bg = c.bg_search })
hi('IncSearch', { fg = inv, bg = p.orange })
hi('CurSearch', { fg = inv, bg = p.orange })
hi('Substitute', { fg = inv, bg = p.cinnamon })
hi('MatchParen', { fg = p.orange, bold = true })
hi('Pmenu', { fg = c.fg, bg = c.bg_float })
hi('PmenuSel', { fg = c.fg, bg = c.bg_visual })
hi('PmenuSbar', { bg = c.border })
hi('PmenuThumb', { bg = c.fg_muted })
hi('StatusLine', { fg = c.fg, bg = c.bg_cursorline })
hi('StatusLineNC', { fg = c.fg_muted, bg = c.bg_cursorline })
hi('TabLine', { fg = c.fg_muted, bg = c.bg_cursorline })
hi('TabLineFill', { bg = c.bg_cursorline })
hi('TabLineSel', { fg = c.fg, bg = c.bg, bold = true })
hi('WinSeparator', { fg = c.border })
hi('VertSplit', { fg = c.border })
hi('Folded', { fg = c.fg_dim, bg = c.bg_cursorline })
hi('FoldColumn', { fg = c.fg_muted })
hi('NonText', { fg = c.fg_muted })
hi('SpecialKey', { fg = c.fg_muted })
hi('Whitespace', { fg = c.fg_muted })
hi('EndOfBuffer', { fg = c.fg_muted })
hi('Directory', { fg = c.blue })
hi('Title', { fg = c.keyword, bold = true })
hi('ErrorMsg', { fg = c.error })
hi('WarningMsg', { fg = c.warning })
hi('ModeMsg', { fg = c.fg, bold = true })
hi('MoreMsg', { fg = c.green })
hi('Question', { fg = c.green })
hi('WildMenu', { fg = c.fg, bg = c.bg_visual })
hi('Conceal', { fg = c.fg_dim })
hi('SpellBad', { undercurl = true, sp = c.error })

-- Syntax
hi('Comment', { fg = c.comment, italic = true })
hi('String', { fg = c.string })
hi('Character', { fg = c.string })
hi('Number', { fg = c.number })
hi('Float', { fg = c.number })
hi('Boolean', { fg = c.number, bold = true, italic = true })
hi('Identifier', { fg = c.variable })
hi('Function', { fg = c.func, italic = true })
hi('Statement', { fg = c.keyword, italic = true })
hi('Conditional', { fg = c.kw_ctrl, bold = true })
hi('Repeat', { fg = c.kw_ctrl, bold = true })
hi('Label', { fg = c.keyword })
hi('Operator', { fg = c.operator, bold = true })
hi('Keyword', { fg = c.keyword, italic = true })
hi('Exception', { fg = c.error, italic = true })
hi('PreProc', { fg = c.preproc })
hi('Include', { fg = c.preproc })
hi('Define', { fg = c.preproc })
hi('Macro', { fg = c.preproc })
hi('PreCondit', { fg = c.preproc })
hi('Type', { fg = c.type, italic = true })
hi('StorageClass', { fg = c.keyword })
hi('Structure', { fg = c.type })
hi('Typedef', { fg = c.type })
hi('Special', { fg = c.constant })
hi('SpecialChar', { fg = c.constant })
hi('Tag', { fg = c.tag })
hi('Delimiter', { fg = c.punct })
hi('SpecialComment', { fg = c.comment, bold = true })
hi('Debug', { fg = c.warning })
hi('Underlined', { underline = true })
hi('Error', { fg = c.error })
hi('Todo', { fg = p.orange, bold = true })

-- Treesitter
hi('@comment', { link = 'Comment' })
hi('@string', { link = 'String' })
hi('@string.escape', { fg = c.constant })
hi('@string.regex', { fg = p.orange })
hi('@character', { link = 'Character' })
hi('@number', { link = 'Number' })
hi('@boolean', { link = 'Boolean' })
hi('@float', { link = 'Float' })
hi('@variable', { fg = c.variable })
hi('@variable.builtin', { fg = c.string, italic = true })
hi('@variable.parameter', { fg = c.param, italic = true })
hi('@variable.member', { fg = c.field })
hi('@constant', { fg = c.constant })
hi('@constant.builtin', { fg = c.constant, italic = true })
hi('@function', { fg = c.func, italic = true })
hi('@function.builtin', { fg = c.func, italic = true })
hi('@function.call', { fg = c.func })
hi('@function.method', { fg = c.func })
hi('@function.method.call', { fg = c.func })
hi('@constructor', { fg = c.type })
hi('@keyword', { fg = c.keyword, italic = true })
hi('@keyword.function', { fg = c.keyword, italic = true })
hi('@keyword.return', { fg = c.kw_ret, bold = true })
hi('@keyword.operator', { fg = c.operator })
hi('@keyword.conditional', { fg = c.kw_ctrl, bold = true })
hi('@keyword.repeat', { fg = c.kw_ctrl, bold = true })
hi('@keyword.import', { fg = c.preproc })
hi('@keyword.exception', { fg = c.error, italic = true })
hi('@type', { fg = c.type, italic = true })
hi('@type.builtin', { fg = c.type, italic = true })
hi('@type.qualifier', { fg = c.keyword, italic = true })
hi('@namespace', { fg = c.field, italic = true })
hi('@module', { fg = c.field, italic = true })
hi('@property', { fg = c.field })
hi('@attribute', { fg = c.preproc })
hi('@tag', { fg = c.tag })
hi('@tag.attribute', { fg = c.param, italic = true })
hi('@tag.delimiter', { fg = c.punct })
hi('@punctuation.bracket', { fg = c.punct })
hi('@punctuation.delimiter', { fg = c.punct })
hi('@punctuation.special', { fg = c.constant })
hi('@operator', { fg = c.operator })
hi('@markup.heading', { fg = c.keyword, bold = true })
hi('@markup.strong', { bold = true })
hi('@markup.italic', { italic = true })
hi('@markup.link', { fg = c.blue, underline = true })
hi('@markup.link.url', { fg = c.blue, italic = true, underline = true })
hi('@markup.raw', { fg = c.string })
hi('@markup.list', { fg = c.operator })

-- Diagnostics
hi('DiagnosticError', { fg = c.error })
hi('DiagnosticWarn', { fg = c.warning })
hi('DiagnosticInfo', { fg = c.info })
hi('DiagnosticHint', { fg = c.hint })
hi('DiagnosticUnderlineError', { undercurl = true, sp = c.error })
hi('DiagnosticUnderlineWarn', { undercurl = true, sp = c.warning })
hi('DiagnosticUnderlineInfo', { undercurl = true, sp = c.info })
hi('DiagnosticUnderlineHint', { undercurl = true, sp = c.hint })
hi('DiagnosticVirtualTextError', { fg = c.error, italic = true })
hi('DiagnosticVirtualTextWarn', { fg = c.warning, italic = true })
hi('DiagnosticVirtualTextInfo', { fg = c.info, italic = true })
hi('DiagnosticVirtualTextHint', { fg = c.hint, italic = true })

-- LSP
hi('LspReferenceText', { bg = c.bg_visual })
hi('LspReferenceRead', { bg = c.bg_visual })
hi('LspReferenceWrite', { bg = c.bg_visual, bold = true })
hi('LspSignatureActiveParameter', { fg = p.orange, bold = true })

-- Git signs
hi('GitSignsAdd', { fg = c.added })
hi('GitSignsChange', { fg = c.changed })
hi('GitSignsDelete', { fg = c.removed })
hi('DiffAdd', { bg = c.diff_add_bg })
hi('DiffChange', { bg = c.diff_chg_bg })
hi('DiffDelete', { bg = c.diff_del_bg })
hi('DiffText', { bg = c.diff_chg_bg, bold = true })

-- Telescope
hi('TelescopeNormal', { fg = c.fg, bg = c.bg_float })
hi('TelescopeBorder', { fg = c.border, bg = c.bg_float })
hi('TelescopePromptNormal', { fg = c.fg, bg = c.bg_float })
hi('TelescopePromptBorder', { fg = c.border, bg = c.bg_float })
hi('TelescopePromptTitle', { fg = inv, bg = p.orange, bold = true })
hi('TelescopePreviewTitle', { fg = inv, bg = c.green, bold = true })
hi('TelescopeResultsTitle', { fg = c.border })
hi('TelescopeSelection', { bg = c.bg_visual })
hi('TelescopeMatching', { fg = p.orange, bold = true })

-- Indent guides
hi('IndentBlanklineChar', { fg = c.border })
hi('IblIndent', { fg = c.border })
hi('IblScope', { fg = c.fg_muted })

-- Trouble
hi('TroubleNormal', { fg = c.fg, bg = c.bg_float })
hi('TroubleCount', { fg = p.orange, bold = true })

-- Misc
hi('healthSuccess', { fg = c.green })
hi('healthWarning', { fg = c.warning })
hi('healthError', { fg = c.error })
