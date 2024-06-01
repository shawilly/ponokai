<p align="center">
  <a href="https://github.com/edeneast/nightfox.nvim/stargazers"><img src="https://img.shields.io/github/stars/shawilly/ponokai?colorA=192330&colorB=f8e7b0&style=for-the-badge"></a>
  <a href="https://github.com/edeneast/nightfox.nvim/issues"><img src="https://img.shields.io/github/issues/shawilly/ponokai?colorA=192330&colorB=98d4e7&style=for-the-badge"></a>
  <a href="https://github.com/edeneast/nightfox.nvim/contributors"><img src="https://img.shields.io/github/contributors/shawilly/ponokai?colorA=192330&colorB=b4e49a&style=for-the-badge"></a>
  <a href="https://github.com/EdenEast/nightfox.nvim/network/members"><img src="https://img.shields.io/github/forks/shawilly/ponokai?colorA=192330&colorB=bdb2ff&style=for-the-badge"></a>
</p>

<div align="center">
	<br>
	<a href="https://github.com/shawilly/ponokai">
		<img src="logo-animated.svg" width="800" height="400" alt="Click to see the source">
	</a>
	<br>
</div>

&nbsp;&nbsp;&nbsp;&nbsp;

<p align="center">
  <img src="https://github.com/shawilly/ponokai/assets/89072538/14404312-f047-484a-a9c7-a4f82775c60d" height="40" />
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <img src="https://github.com/shawilly/ponokai/assets/89072538/e5af1c9c-62fd-4c80-99ae-1182ac872247" height="40" />
</p>

<hr/>

<h4 align="center">A pastel twist on the iconic Monokai, crafted for comfort and style.</h4>

<hr/>

``` vim
vim.g.ponokai_style = "default"
```
<img width="1510" alt="Screenshot 2024-05-31 at 21 07 13" src="https://github.com/shawilly/ponokai/assets/89072538/dae8047c-92f7-464b-ae86-19392dfcf72f">
<hr/>

``` vim
vim.g.ponokai_style = "kitty"
```
<img width="1473" alt="Screenshot 2024-05-31 at 19 59 50" src="https://github.com/shawilly/ponokai/assets/89072538/461d6755-9f65-46cd-8982-97d2c96f4436">

&nbsp;&nbsp;&nbsp;&nbsp;

> [!WARNING]
> <h3 align="center">🌊 ⚠️ more styles coming soon ⚠️ 🌊</h3>

---

### 🎨 From Monokai to Ponokai
Inspired by the classic [Monokai](https://monokai.pro/vscode) theme and seeking a less eye-straining alternative, I transitioned to [Sonokai](https://github.com/sainnhe/sonokai). Despite the improvements, my quest for the perfect pastel blend led me to craft Ponokai, merging the best of Sonokai with the soothing palette of modern themes like [catppuccin](https://github.com/catppuccin/nvim).

Ponokai is a direct fork of Sonokai, maintaining all its features and continuing to evolve with fresh, pastel-inspired tweaks for the color aficionado.

### 🌟 Features
- **Perfect Contrast:** High enough to pop, soft enough to relax.
- **Vivid, Pastel Colors:** A palette that's easy on the eyes.
- **Customization Galore:** Tailor it to your taste.
- **Extensive Support:** Works beautifully with common file types and plugins.
- **Advanced Syntax Highlighting:**
  - Tree-sitter support for precise highlighting.
  - Semantic highlighting to distinguish code by meaning.
  - [Italic support](https://aka.sainnhe.dev/fonts) for that extra flair.

---

# Installation

> [!IMPORTANT] 
> For better syntax highlighting support, consider installing one of the
> following plugins additionally to this colorscheme:
>
> [vim-polygot](https://github.com/sheerun/vim-polyglot)
> 
> [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
 ---

## NeoVim

[lazy.nvim](https://github.com/folke/lazy.nvim) (recommended)
``` lua
   {
      'sainnhe/sonokai',
      lazy = false,
      priority = 1000,
      config = function()
        -- Optionally configure and load the colorscheme
        -- directly inside the plugin declaration.
        vim.g.sonokai_enable_italic = true
        vim.cmd.colorscheme('sonokai')
      end
    }
```
> [!TIP]
> <b>EXAMPLE</b>
``` lua
{
	"shawilly/ponokai",
	priority = 1000,
	config = function()
    		vim.g.ponokai_transparent_background = "1"
		vim.g.ponokai_enable_italic = "1"
		vim.g.ponokai_style = "kitty"
		vim.cmd.colorscheme("ponokai")
	end,
}
```

## VIM

### Via Plugin Manager
Using [vim-plug](https://github.com/junegunn/vim-plug):
```vim
Plug 'shawilly/ponokai'
```

### Via Pack Feature
1. Create a new directory:
    ```sh
    mkdir -p ~/.vim/pack/colors/opt
    ```
2. Clone the repository:
    ```sh
    git clone --depth 1 https://github.com/shawilly/ponokai.git ~/.vim/pack/colors/opt/ponokai
    ```
3. Generate help tags:
    ```vim
    :helptags ~/.vim/pack/colors/opt/ponokai/doc/
    ```
4. Add to your vimrc:
    ```vim
    packadd! ponokai
    ```
   
### Manually
1. Clone the repository:
    ```sh
    git clone --depth 1 https://github.com/shawilly/ponokai.git
    ```
2. Copy files to your Vim directory:
    ```sh
    cp /path/to/ponokai/autoload/ponokai.vim ~/.vim/autoload/
    cp /path/to/ponokai/colors/ponokai.vim ~/.vim/colors/
    cp /path/to/ponokai/doc/ponokai.txt ~/.vim/doc/
    vim -c 'helptags ~/.vim/doc/'
    cp /path/to/ponokai/autoload/airline/themes/ponokai.vim ~/.vim/autoload/airline/themes/
    cp /path/to/ponokai/autoload/lightline/colorscheme/ponokai.vim ~/.vim/autoload/lightline/colorscheme/
    cp /path/to/ponokai/lua/lualine/themes/ponokai.lua ~/.config/nvim/lua/lualine/themes/
    ```
<hr/>

## Usage

### Vim
Add the following to your vimrc:
```vim
if has('termguicolors')
  set termguicolors
endif

let g:ponokai_style = 'kitty'
let g:ponokai_better_performance = 1

colorscheme ponokai
```
To apply temporarily:
```vim
:colorscheme ponokai
```

### Airline
```vim
let g:airline_theme = 'ponokai'
```
Apply without reloading:
```vim
:AirlineTheme ponokai
```

### Lightline
```vim
let g:lightline = {}
let g:lightline.colorscheme = 'ponokai'
```
Apply without reloading:
```vim
:let g:lightline.colorscheme = 'ponokai'
:call lightline#init()
:call lightline#colorscheme()
```

### Lualine
```lua
require'lualine'.setup {
  options = {
    theme = 'ponokai'
  }
}
```
Apply without reloading:
```lua
:lua require'lualine'.setup {options = {theme = 'ponokai'}}
```

## Configuration

| Option                            | Description                                          | Type       | Values                                              | Default   |
|-----------------------------------|------------------------------------------------------|------------|-----------------------------------------------------|-----------|
| `g:ponokai_style`                 | Set the style of this color scheme.                  | `String`   | `'default'`, `'kitty'`, `'vampire'`                 | `'default'`|
| `g:ponokai_disable_italic_comment`| Disable italic in comments.                          | `Number`   | `0`, `1`                                            | `0`       |
| `g:ponokai_enable_italic`         | Enable italic in this color scheme.                  | `Number`   | `0`, `1`                                            | `0`       |
| `g:ponokai_cursor`                | Customize the cursor color (GUI clients only).       | `String`   | `'auto'`, `'red'`, `'orange'`, `'yellow'`, `'green'`, `'blue'`, `'purple'` | `'auto'` |
| `g:ponokai_transparent_background`| Use a transparent background.                        | `Number`   | `0`, `1`, `2`                                       | `0`       |
| `g:ponokai_dim_inactive_windows`  | Dim inactive windows (Neovim only).                  | `Number`   | `0`, `1`                                            | `0`       |
| `g:ponokai_menu_selection_background` | Customize the background color of `PmenuSel` and `WildMenu`. | `String`   | `'blue'`, `'green'`, `'red'`                        | `'blue'`  |
| `g:ponokai_spell_foreground`      | Color the foreground of spell.                       | `String`   | `'none'`, `'colored'`                               | `'none'`  |
| `g:ponokai_show_eob`              | Show `EndOfBuffer`.                                  | `Number`   | `1`, `0`                                            | `1`       |
| `g:ponokai_float_style`           | Style for floating windows.                          | `String`   | `'bright'`, `'dim'`                                 | `'bright'`|
| `g:ponokai_diagnostic_text_highlight` | Highlight background of error/warning/info/hint texts. | `Number`   | `0`, `1`                                            | `0`       |
| `g:ponokai_diagnostic_line_highlight` | Highlight lines for error/warning/info/hint.          | `Number`   | `0`, `1`                                            | `0`       |
| `g:ponokai_diagnostic_virtual_text` | Adjust virtual text highlighting for error/warning/info/hint. | `String`   | `'grey'`, `'colored'`, `'highlighted'`              | `'grey'`  |
| `g:ponokai_current_word`          | Control behavior of the word under the current cursor. | `String`   | `'grey background'`, `'bold'`, `'underline'`, `'italic'` | `'grey background'` (non-transparent), `'bold'` (transparent) |
| `g:ponokai_disable_terminal_colors` | Disable terminal colors provided by this color scheme. | `Number`   | `0`, `1`                                            | `0`       |
| `g:ponokai_lightline_disable_bold`| Disable bold in the lightline color scheme.          | `Number`   | `0`, `1`                                            | `0`       |
| `g:ponokai_better_performance`    | Reduce loading time by loading part of the code on demand. | `Number`   | `0`, `1`                                            | `0`       |
| `g:ponokai_colors_override`       | Override the color palette.                          | `Dictionary`| -                                                  | `{}`      |
|                                   | Example:                                             |            | -                                                   | -         |
|                                   | ```                                                  |            |                                                     |           |
|                                   | let g:ponokai_colors_override = {'bg0': ['#1e222a', '235'], 'bg2': ['#282c34', '236']} |            |                                                     |           |
|                                   | colorscheme ponokai                                  |            |                                                     |           |
|                                   | ```                                                  |            |                                                     |           |

> [!TIP]
> ### Example
```vim
if has('termguicolors')
  set termguicolors
endif

let g:ponokai_style = 'andromeda'
let g:ponokai_better_performance = 1

colorscheme ponokai
let g:lightline = {'colorscheme' : 'ponokai'}
```

## FAQ

### The colors don't match the screenshots.
1. Ensure true colors are enabled:
    ```vim
    set termguicolors
    ```
2. Verify terminal emulator supports true colors using [this script](https://unix.stackexchange.com/questions/404414/print-true-color-24-bit-test-pattern).
3. If using tmux, override default true colors:
    [How to use true colors in vim under tmux?](https://github.com/tmux/tmux/issues/1246)

### Configuration options don't work.
Ensure options are placed before `colorscheme ponokai`.

### Errors when installing with pack feature.
Add `packadd! ponokai` before applying the color scheme.

### Enable cursive italic keywords.
1. Install a font that supports cursive italics, e.g., [Sainnhe Fonts](https://aka.sainnhe.dev/fonts).
2. Enable italic keywords:
    ```vim
    let g:ponokai_enable_italic = 


### 💡 Inspirations
Ponokai is inspired by:
- [Sonokai](https://github.com/sainnhe/sonokai)
- [Monokai Pro](https://monokai.pro/vscode)
- [catppuccin](https://github.com/catppuccin/nvim)

### 👤 Maintainers
Currently, it's just me, shawilly 🥇... but collaborators are always welcome!

### 📄 License
Ponokai is open-sourced under the [MIT license](./LICENSE).

## <p align="center">🌊 appreciate all stars, and contributions 🌊</p>
