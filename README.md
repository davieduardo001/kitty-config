# 🐱 Kitty Terminal Config

This repository contains my personalized configuration for the [Kitty](https://sw.kovidgoyal.net/kitty/) terminal emulator. It includes a clean main config and modular themes like **Dracula** and **Synth Wave**, all organized in a structured layout.

---

## 📁 Project Structure

```bash
kitty-config/
├── kitty.conf              # Main configuration file
└── themes/
    ├── dracula.conf        # Dracula theme
    └── synth_wave.conf     # Synth Wave theme
````

---

## ⚙️ Installation

1. **Clone the repository**:

```bash
git clone https://gitlab.com/pessoal1761115/my-confs/kitty-config#
```

2. **Symlink to your Kitty config folder**:

```bash
mkdir -p ~/.config/kitty
ln -sfn ~/configs/kitty-config/kitty.conf ~/.config/kitty/kitty.conf
ln -sfn ~/configs/kitty-config/themes ~/.config/kitty/themes
```

---

## 🎨 Switching Themes

Open `kitty.conf` and change the `include` line depending on which theme you want:

```conf
# To use Dracula:
include themes/dracula.conf

# To use Synth Wave:
# include themes/synth_wave.conf
```

Then reload Kitty (press `Ctrl+Shift+F5`) or restart it.

---

## 💡 Tips

* To preview and apply third-party themes, check out [dexpota/kitty-themes](https://github.com/dexpota/kitty-themes).
* Font and other settings can be customized directly in `kitty.conf`.
* Make sure your `kitty.conf` is located at `~/.config/kitty/kitty.conf` for Kitty to load it properly.

---

## 📚 Resources

* [Kitty Documentation](https://sw.kovidgoyal.net/kitty/)
* [Dracula Theme](https://draculatheme.com/kitty)
* [Synthwave Aesthetic](https://github.com/robb0wen/synthwave-vscode)

---

## 🧾 License

MIT License — feel free to fork and modify.
