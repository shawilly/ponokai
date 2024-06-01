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

<h3 align="center">🌊 ⚠️ more styles coming soon ⚠️ 🌊</h3>

---

### 🎨 From Monokai to Ponokai
Inspired by the classic [Monokai](https://monokai.pro/vscode) theme and seeking a less eye-straining alternative, I transitioned to [Sonokai](https://github.com/sainnhe/sonokai). Despite the improvements, my quest for the perfect pastel blend led me to craft Ponokai, merging the best of Sonokai with the soothing palette of modern themes like [catppuccin](https://github.com/catppuccin/nvim).

Ponokai is a direct fork of Sonokai, maintaining all its features and continuing to evolve with fresh, pastel-inspired tweaks for the color aficionado.

---

## Installation

[lazy.nvim](https://github.com/folke/lazy.nvim) (recommended)
``` lua
{
	"shawilly/ponokai",
	priority = 1000,
	config = function() 
		vim.g.ponokai_enable_italic = "1"
		vim.g.ponokai_style = "default" -- or "kitty"
		vim.cmd.colorscheme("ponokai")
    -- Enable transparent background with vim.g.ponokai_transparent_background = "1"
	end,
}
```

<b>For VIM see [📚 Documentation](https://github.com/shawilly/ponokai/blob/master/doc/ponokai.txt)</b>

<hr/>

### 🌟 Features
- **Perfect Contrast:** High enough to pop, soft enough to relax.
- **Vivid, Pastel Colors:** A palette that's easy on the eyes.
- **Customization Galore:** Tailor it to your taste.
- **Extensive Support:** Works beautifully with common file types and plugins.
- **Advanced Syntax Highlighting:**
  - Tree-sitter support for precise highlighting.
  - Semantic highlighting to distinguish code by meaning.
  - [Italic support](https://aka.sainnhe.dev/fonts) for that extra flair.

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
