" =============================================================================
" URL: https://github.com/shawilly/ponokai
" Filename: autoload/ponokai.vim
" Author: Shane Williams
" Email: shane@shawilly.dev
" License: MIT License
" =============================================================================

function! ponokai#get_configuration() "{{{
  return {
        \ 'style': get(g:, 'ponokai_style', 'default'),
        \ 'colors_override': get(g:, 'ponokai_colors_override', {}),
        \ 'transparent_background': get(g:, 'ponokai_transparent_background', 0),
        \ 'dim_inactive_windows': get(g:, 'ponokai_dim_inactive_windows', 0),
        \ 'disable_italic_comment': get(g:, 'ponokai_disable_italic_comment', 0),
        \ 'enable_italic': get(g:, 'ponokai_enable_italic', 0),
        \ 'cursor': get(g:, 'ponokai_cursor', 'auto'),
        \ 'menu_selection_background': get(g:, 'ponokai_menu_selection_background', 'blue'),
        \ 'spell_foreground': get(g:, 'ponokai_spell_foreground', 'none'),
        \ 'show_eob': get(g:, 'ponokai_show_eob', 1),
        \ 'float_style': get(g:, 'ponokai_float_style', 'bright'),
        \ 'current_word': get(g:, 'ponokai_current_word', get(g:, 'ponokai_transparent_background', 0) == 0 ? 'grey background' : 'bold'),
        \ 'lightline_disable_bold': get(g:, 'ponokai_lightline_disable_bold', 0),
        \ 'diagnostic_text_highlight': get(g:, 'ponokai_diagnostic_text_highlight', 0),
        \ 'diagnostic_line_highlight': get(g:, 'ponokai_diagnostic_line_highlight', 0),
        \ 'diagnostic_virtual_text': get(g:, 'ponokai_diagnostic_virtual_text', 'grey'),
        \ 'disable_terminal_colors': get(g:, 'ponokai_disable_terminal_colors', 0),
        \ 'better_performance': get(g:, 'ponokai_better_performance', 0),
        \ }
endfunction "}}}
function! ponokai#get_palette(style, colors_override) "{{{
  if a:style ==# 'default'
    let palette = {
          \ 'black':      ['#181a1c',   '232'],
          \ 'bg_dim':     ['#252630',   '232'],
          \ 'bg0':        ['#2b2d3a',   '235'],
          \ 'bg1':        ['#333648',   '236'],
          \ 'bg2':        ['#363a4e',   '236'],
          \ 'bg3':        ['#393e53',   '237'],
          \ 'bg4':        ['#3f445b',   '237'],
          \ 'bg_red':     ['#ffb3bd',   '217'],
          \ 'diff_red':   ['#a67f82',   '181'],
          \ 'bg_green':   ['#cbecb0',   '193'],
          \ 'diff_green': ['#818f80',   '245'],
          \ 'bg_blue':    ['#b3e7f9',   '153'],
          \ 'diff_blue':  ['#808d9f',   '247'],
          \ 'diff_yellow':['#9c937a',   '250'],
          \ 'fg':         ['#f2f2f3',   '254'],
          \ 'red':        ['#ff8c9a',   '217'],
          \ 'orange':     ['#f3bb9a',   '216'],
          \ 'yellow':     ['#f8e7b0',   '230'],
          \ 'green':      ['#b4e49a',   '193'],
          \ 'blue':       ['#98d4e7',   '152'],
          \ 'purple':     ['#d4c5fa',   '183'],
          \ 'grey':       ['#c4c6cf',   '250'],
          \ 'grey_dim':   ['#9da1af',   '246'],
          \ 'none':       ['NONE',      'NONE']
          \ }
  elseif a:style ==# 'kitty'
    let palette = {
          \ 'black':      ['#141020',   '232'],
          \ 'bg_dim':     ['#1a1823',   '232'],
          \ 'bg0':        ['#1e1d2f',   '235'],   
          \ 'bg1':        ['#2d3648',   '236'],  
          \ 'bg2':        ['#2f2d42',   '236'], 
          \ 'bg3':        ['#575268',   '237'],
          \ 'bg4':        ['#6e6c7e',   '237'],
          \ 'bg_red':     ['#ffb3dd',   '217'],
          \ 'diff_red':   ['#a67fa2',   '181'],
          \ 'bg_green':   ['#cbeca0',   '193'],
          \ 'diff_green': ['#818fa0',   '245'],
          \ 'bg_blue':    ['#b3e7ff',   '153'],
          \ 'diff_blue':  ['#808dff',   '247'],
          \ 'diff_yellow':['#9c939a',   '250'],
          \ 'fg':         ['#f8f8f9',   '254'],
          \ 'red':        ['#f18fad',   '217'],
          \ 'orange':     ['#f8bd96',   '216'],
          \ 'yellow':     ['#fae9b0',   '230'],
          \ 'green':      ['#b5e48c',   '193'],
          \ 'blue':       ['#a8daff',   '152'],
          \ 'purple':     ['#ddb5f2',   '183'],
          \ 'grey':       ['#b4b6cf',   '250'],
          \ 'grey_dim':   ['#8d91af',   '246'],
          \ 'none':       ['none',      'none']
          \ }
  elseif a:style ==# 'vampire'
    let palette = {
          \ 'black':      ['#141020',   '232'],
          \ 'bg_dim':     ['#1a1823',   '232'],
          \ 'bg0':        ['#282A36',   '235'],
          \ 'bg1':        ['#44475A',   '236'],
          \ 'bg2':        ['#585a6a',   '236'], 
          \ 'bg3':        ['#63657b',   '237'],
          \ 'bg4':        ['#6e6c7e',   '237'], 
          \ 'bg_red':     ['#FF79C6',   '217'],
          \ 'diff_red':   ['#a67fa2',   '181'],
          \ 'bg_green':   ['#cbeca0',   '193'],
          \ 'diff_green': ['#818fa0',   '245'],
          \ 'bg_blue':    ['#b3e7ff',   '153'],
          \ 'diff_blue':  ['#808dff',   '247'],
          \ 'diff_yellow':['#9c939a',   '250'],
          \ 'fg':         ['#F8F8F2',   '254'],
          \ 'red':        ['#FF5555',   '217'],
          \ 'orange':     ['#FFB86C',   '216'],
          \ 'yellow':     ['#F1FA8C',   '230'],
          \ 'green':      ['#50FA7B',   '193'],
          \ 'blue':       ['#8BE9FD',   '152'],
          \ 'purple':     ['#BD93F9',   '183'],
          \ 'grey':       ['#b4b6cf',   '250'],
          \ 'grey_dim':   ['#8d91af',   '246'],
          \ 'none':       ['none',      'none']
          \ }
  endif
  return extend(palette, a:colors_override)
endfunction "}}}
function! ponokai#highlight(group, fg, bg, ...) "{{{
  execute 'highlight' a:group
        \ 'guifg=' . a:fg[0]
        \ 'guibg=' . a:bg[0]
        \ 'ctermfg=' . a:fg[1]
        \ 'ctermbg=' . a:bg[1]
        \ 'gui=' . (a:0 >= 1 ?
          \ a:1 :
          \ 'NONE')
        \ 'cterm=' . (a:0 >= 1 ?
          \ a:1 :
          \ 'NONE')
        \ 'guisp=' . (a:0 >= 2 ?
          \ a:2[0] :
          \ 'NONE')
endfunction "}}}
function! ponokai#syn_gen(path, last_modified, msg) "{{{
  " Generate the `after/syntax` directory.
  let full_content = join(readfile(a:path), "\n") " Get the content of `colors/ponokai.vim`
  let syn_conent = []
  let rootpath = ponokai#syn_rootpath(a:path) " Get the path to place the `after/syntax` directory.
  call substitute(full_content, '" syn_begin.\{-}syn_end', '\=add(syn_conent, submatch(0))', 'g') " Search for 'syn_begin.\{-}syn_end' (non-greedy) and put all the search results into a list.
  for content in syn_conent
    let syn_list = []
    call substitute(matchstr(matchstr(content, 'syn_begin:.\{-}{{{'), ':.\{-}{{{'), '\(\w\|-\)\+', '\=add(syn_list, submatch(0))', 'g') " Get the file types. }}}}}}
    for syn in syn_list
      call ponokai#syn_write(rootpath, syn, content) " Write the content.
    endfor
  endfor
  call ponokai#syn_write(rootpath, 'text', "let g:ponokai_last_modified = '" . a:last_modified . "'") " Write the last modified time to `after/syntax/text/ponokai.vim`
  let syntax_relative_path = has('win32') ? '\after\syntax' : '/after/syntax'
  if a:msg ==# 'update'
    echohl WarningMsg | echom '[ponokai] Updated ' . rootpath . syntax_relative_path | echohl None
    call ponokai#ftplugin_detect(a:path)
  else
    echohl WarningMsg | echom '[ponokai] Generated ' . rootpath . syntax_relative_path | echohl None
    execute 'set runtimepath+=' . fnamemodify(rootpath, ':p') . 'after'
  endif
endfunction "}}}
function! ponokai#syn_write(rootpath, syn, content) "{{{
  " Write the content.
  let syn_path = a:rootpath . '/after/syntax/' . a:syn . '/ponokai.vim' " The path of a syntax file.
  " create a new file if it doesn't exist
  if !filereadable(syn_path)
    call mkdir(a:rootpath . '/after/syntax/' . a:syn, 'p')
    call writefile([
          \ "if !exists('g:colors_name') || g:colors_name !=# 'ponokai'",
          \ '    finish',
          \ 'endif'
          \ ], syn_path, 'a') " Abort if the current color scheme is not ponokai.
    call writefile([
          \ "if index(g:ponokai_loaded_file_types, '" . a:syn . "') ==# -1",
          \ "    call add(g:ponokai_loaded_file_types, '" . a:syn . "')",
          \ 'else',
          \ '    finish',
          \ 'endif'
          \ ], syn_path, 'a') " Abort if this file type has already been loaded.
  endif
  " If there is something like `call ponokai#highlight()`, then add
  " code to initialize the palette and configuration.
  if matchstr(a:content, 'ponokai#highlight') !=# ''
    call writefile([
          \ 'let s:configuration = ponokai#get_configuration()',
          \ 'let s:palette = ponokai#get_palette(s:configuration.style, s:configuration.colors_override)'
          \ ], syn_path, 'a')
  endif
  " Append the content.
  call writefile(split(a:content, "\n"), syn_path, 'a')
  " Add modeline.
  call writefile(['" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker fmr={{{,}}}:'], syn_path, 'a')
endfunction "}}}
function! ponokai#syn_rootpath(path) "{{{
  " Get the directory where `after/syntax` is generated.
  if (matchstr(a:path, '^/usr/share') ==# '') " Return the plugin directory. The `after/syntax` directory should never be generated in `/usr/share`, even if you are a root user.
    return fnamemodify(a:path, ':p:h:h')
  else " Use vim home directory.
    if has('nvim')
      return stdpath('config')
    else
      return expand('~') . '/.vim'
    endif
  endif
endfunction "}}}
function! ponokai#syn_newest(path, last_modified) "{{{
  " Determine whether the current syntax files are up to date by comparing the last modified time in `colors/ponokai.vim` and `after/syntax/text/ponokai.vim`.
  let rootpath = ponokai#syn_rootpath(a:path)
  execute 'source ' . rootpath . '/after/syntax/text/ponokai.vim'
  return a:last_modified ==# g:ponokai_last_modified ? 1 : 0
endfunction "}}}
function! ponokai#syn_clean(path, msg) "{{{
  " Clean the `after/syntax` directory.
  let rootpath = ponokai#syn_rootpath(a:path)
  " Remove `after/syntax/**/ponokai.vim`.
  let file_list = split(globpath(rootpath, 'after/syntax/**/ponokai.vim'), "\n")
  for file in file_list
    call delete(file)
  endfor
  " Remove empty directories.
  let dir_list = split(globpath(rootpath, 'after/syntax/*'), "\n")
  for dir in dir_list
    if globpath(dir, '*') ==# ''
      call delete(dir, 'd')
    endif
  endfor
  if globpath(rootpath . '/after/syntax', '*') ==# ''
    call delete(rootpath . '/after/syntax', 'd')
  endif
  if globpath(rootpath . '/after', '*') ==# ''
    call delete(rootpath . '/after', 'd')
  endif
  if a:msg
    let syntax_relative_path = has('win32') ? '\after\syntax' : '/after/syntax'
    echohl WarningMsg | echom '[ponokai] Cleaned ' . rootpath . syntax_relative_path | echohl None
  endif
endfunction "}}}
function! ponokai#syn_exists(path) "{{{
  return filereadable(ponokai#syn_rootpath(a:path) . '/after/syntax/text/ponokai.vim')
endfunction "}}}
function! ponokai#ftplugin_detect(path) "{{{
  " Check if /after/ftplugin exists.
  " This directory is generated in earlier versions, users may need to manually clean it.
  let rootpath = ponokai#syn_rootpath(a:path)
  if filereadable(ponokai#syn_rootpath(a:path) . '/after/ftplugin/text/ponokai.vim')
    let ftplugin_relative_path = has('win32') ? '\after\ftplugin' : '/after/ftplugin'
    echohl WarningMsg | echom '[ponokai] Detected ' . rootpath . ftplugin_relative_path | echohl None
    echohl WarningMsg | echom '[ponokai] This directory is no longer used, you may need to manually delete it.' | echohl None
  endif
endfunction "}}}

" vim: set sw=2 ts=2 sts=2 et tw=80 ft=vim fdm=marker fmr={{{,}}}:
