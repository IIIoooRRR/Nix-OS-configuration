# Nix-OS Configuration (Niri Branch) 

Personal **NixOS** configuration tailored for the **Niri** compositor with a focus on transparency, blur, and aesthetic minimalism.

---

## 📂 File Structure


| Module | File Path | Description |
| :--- | :--- | :--- |
| **System** | `/etc/nixos/configuration.nix` | Core system settings and imports |
| **Niri** | `/etc/nixos/display/niri.nix` | WM configuration and keybindings |
| **Waybar** | `/etc/nixos/display/waybar.nix` | Status bar with CSS styling |
| **Mako** | `/etc/nixos/display/mako.nix` | Notification daemon (12px radius, translucent) |
| **Fuzzel** | `/etc/nixos/display/fuzzel.nix` | Wayland-native application launcher |
| **Kitty** | `/etc/nixos/display/kitty.nix` | Terminal emulator with blur/opacity |
| **User** | `/etc/nixos/default/user.nix` | User profile and shell environment |
| **Packages** | `/etc/nixos/default/packages.nix` | System-wide apps and fonts |

---

## ⌨️ Full Hotkeys & Aliases

### System & Core Apps


| Shortcut | Action |
| :--- | :--- |
| `Mod + Enter` | Open **Kitty** Terminal |
| `Mod + D` | Open **Fuzzel** Launcher |
| `Mod + Q` | Close Active Window |
| `Mod + Shift + E` | Exit Niri (Logout) |
| `Mod + L` | Lock Screen |
| `PrintScreen` | Take Screenshot |

### Window & Column Management


| Shortcut | Action |
| :--- | :--- |
| `Mod + H` / `Left` | Focus Column Left |
| `Mod + L` / `Right` | Focus Column Right |
| `Mod + K` / `Up` | Focus Window Up |
| `Mod + J` / `Down` | Focus Window Down |
| `Mod + Shift + H` / `Left` | Move Column Left |
| `Mod + Shift + L` / `Right` | Move Column Right |
| `Mod + R` | Switch Preset Window Widths |
| `Mod + F` | Toggle Fullscreen |
| `Mod + C` | Center Column |
| `Mod + Minus` | Consume Window into Column |
| `Mod + Plus` | Expel Window from Column |

### Workspace Navigation


| Shortcut | Action |
| :--- | :--- |
| `Mod + 1-9` | Switch to Workspace 1-9 |
| `Mod + Shift + 1-9` | Move Window to Workspace 1-9 |
| `Mod + Wheel Down` | Next Workspace |
| `Mod + Wheel Up` | Previous Workspace |

### Shell Aliases


| Alias | Command | Action |
| :--- | :--- | :--- |
| `nix-up` | `sudo nixos-rebuild switch` | Rebuild and apply system configuration |
| `c` | `clear && neofetch` | Clear terminal and show system info |

---

## 🎨 Visuals & Software

- **WM:** [Niri](https://github.com) — Scrollable tiling compositor.
- **Terminal:** [Kitty](https://kovidgoyal.net) — GPU-accelerated with blur/transparency.
- **Bar:** [Waybar](https://github.com) — Highly customizable status bar.
- **Launcher:** [Fuzzel](https://codeberg.org) — Lightweight Wayland app runner.
- **Notifications:** [Mako](https://emersion.fr) — Minimalist notification daemon.
- **Font:** `JetBrainsMono Nerd Font` — Essential for icons and clean UI.

---

## ⚠️ Important Note

When installing on a new machine, **do not replace** your `hardware-configuration.nix`. Your file contains unique disk UUIDs required for the system to boot properly.

```bash
# Deployment:
git clone -b niri https://github.com
sudo cp -r Nix-OS-configuration/* /etc/nixos/
nix-up
```

```

