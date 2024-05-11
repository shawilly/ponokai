```

	         _          _            _             _            _              _                    _     
    	        /\ \       /\ \         /\ \     _    /\ \         /\_\           / /\                 /\ \   
 	       /  \ \     /  \ \       /  \ \   /\_\ /  \ \       / / /  _       / /  \                \ \ \  
    	      / /\ \ \   / /\ \ \     / /\ \ \_/ / // /\ \ \     / / /  /\_\    / / /\ \               /\ \_\ 
  	     / / /\ \_\ / / /\ \ \   / / /\ \___/ // / /\ \ \   / / /__/ / /   / / /\ \ \             / /\/_/ 
	    / / /_/ / // / /  \ \_\ / / /  \/____// / /  \ \_\ / /\_____/ /   / / /  \ \ \           / / /    
 	   / / /__\/ // / /   / / // / /    / / // / /   / / // /\_______/   / / /___/ /\ \         / / /     
	  / / /_____// / /   / / // / /    / / // / /   / / // / /\ \ \     / / /_____/ /\ \       / / /      
	 / / /      / / /___/ / // / /    / / // / /___/ / // / /  \ \ \   / /_________/\ \ \  ___/ / /__     
	/ / /      / / /____\/ // / /    / / // / /____\/ // / /    \ \ \ / / /_       __\ \_\/\__\/_/___\    
	\/_/       \/_________/ \/_/     \/_/ \/_________/ \/_/      \_\_\\_\___\     /____/_/\/_________/    
                                                                                                      
```

<p align="center">
  <img src="https://github.com/shawilly/ponokai/assets/89072538/311e3738-2a5b-4b24-8ac6-bcca5ceae25b" alt="Ponokai Theme Preview">
</p>

<h4 align="center">A pastel twist on the iconic Monokai, crafted for comfort and style.</h4>

<h3 align="center">🌊 ⚠️ more pastel monokaish styles coming soon ⚠️ 🌊</h3>

---

### 🎨 From Monokai to Ponokai
Inspired by the classic [Monokai](https://monokai.pro/vscode) theme and seeking a less eye-straining alternative, I transitioned to [Sonokai](https://github.com/sainnhe/sonokai). Despite the improvements, my quest for the perfect pastel blend led me to craft Ponokai, merging the best of Sonokai with the soothing palette of modern themes like [catppuccin](https://github.com/catppuccin/nvim).

Ponokai is a direct fork of Sonokai, maintaining all its features and continuing to evolve with fresh, pastel-inspired tweaks for the color aficionado.

### Installation

[lazy.nvim](https://github.com/folke/lazy.nvim) (recommended)
``` lua
{
	"shawilly/ponokai",
	priority = 1000,
	config = function() 
		vim.g.ponokai_enable_italic = "1"
		vim.g.ponokai_style = "default"
		vim.cmd.colorscheme("ponokai")
    -- Enable transparent background with vim.g.ponokai_transparent_background = "1"
	end,
}
```

### 🌟 Features
- **Perfect Contrast:** High enough to pop, soft enough to relax.
- **Vivid, Pastel Colors:** A palette that's easy on the eyes.
- **Customization Galore:** Tailor it to your taste.
- **Extensive Support:** Works beautifully with common file types and plugins.
- **Advanced Syntax Highlighting:**
  - Tree-sitter support for precise highlighting.
  - Semantic highlighting to distinguish code by meaning.
  - [Italic support](https://aka.sainnhe.dev/fonts) for that extra flair.

### 📚 Documentation
Dive into the details with our [documentation](https://github.com/shawilly/ponokai/blob/master/doc/ponokai.txt).

### 🤝 Contributing
Got ideas? You can follow the original sonokai [contributing guide](https://www.sainnhe.dev/post/contributing-guide/).

### 💡 Inspirations
Ponokai is inspired by:
- [Sonokai](https://github.com/sainnhe/sonokai)
- [Monokai Pro](https://monokai.pro/vscode)
- [catppuccin](https://github.com/catppuccin/nvim)

### 👤 Maintainers
Currently, it's just me, shawilly 🥇... but collaborators are always welcome!

### 📄 License
Ponokai is open-sourced under the [MIT license](./LICENSE).

<p align="center">⭐️ Show some love and star the project to support it! ⭐️</p>
