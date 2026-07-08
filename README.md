<p align="center">
  <img src="./Assets/title.png" alt="qylock" width="100%" style="border-radius: 12px; box-shadow: 0 4px 15px rgba(0,0,0,0.5);"/>
</p>

<p align="center">
  <a href="#sddm-setup"><img src="https://img.shields.io/badge/SDDM-black?style=for-the-badge&color=7aa2f7&labelColor=1a1b26&logo=linux&logoColor=white"/></a>&nbsp;<a href="#quickshell-setup"><img src="https://img.shields.io/badge/QUICKSHELL-black?style=for-the-badge&color=bb9af7&labelColor=1a1b26&logo=qt&logoColor=white"/></a>
</p>

<div align="center">
<pre>
<a href="#sddm-setup">ꜱᴅᴅᴍ</a>  •  <a href="#quickshell-setup">ǫᴜɪᴄᴋsʜᴇʟʟ</a>  •  <a href="#faq">ꜰᴀǫ</a>  •  <a href="#gallery">ɢᴀʟʟᴇʀʏ</a>  •  <a href="#credits">ᴄʀᴇᴅɪᴛꜱ</a>
</pre>
</div>

<br>

<p>A slimmed-down personal fork of <a href="https://github.com/Darkkal44/qylock"><b>qylock</b></a>, trimmed to a single customized theme — <b>Pixel · Waterfall</b> — for both SDDM (login) and Quickshell (lockscreen)</p>

> [!NOTE]
> This fork keeps only my Pixel Waterfall. The theme file is shared: the same `themes/pixel-waterfall` is used both by `sddm.sh` (login screen) and `quickshell.sh` (lockscreen)

#### ✨ What's customized

- **Font** → system **Inter** (no bundled font shipped)
- **Password mask** → large circles `●`
- **Background** → custom `bg.mp4`

<br>
<p align="center">━━━━━━━ ❖ ━━━━━━━</p>

<a id="sddm-setup"></a>
<br>

<p align="center">
  <img src="https://img.shields.io/badge/-SDDM%20SETUP-7aa2f7?style=for-the-badge&labelColor=1a1b26&logo=linux&logoColor=white" height="60" />
</p>
<br>

Install these dependencies with your distro's package manager (names may vary)

#### 📦 DEPENDENCIES

| | Packages |
|--:|:---|
| **Core** | `sddm` `qt6-declarative` |
| **Video** | `qt6-multimedia` `qt6-multimedia-ffmpeg` |
| **Font** | `inter-font` |

> [!NOTE]
> This theme is Qt6-only. Modern SDDM runs on Qt6

#### 🚀 INSTALLATION

```sh
chmod +x sddm.sh && ./sddm.sh
```

<br>
<p align="center">━━━━━━━ ❖ ━━━━━━━</p>

<a id="quickshell-setup"></a>
<br>

<p align="center">
  <img src="https://img.shields.io/badge/-QUICKSHELL%20SETUP-bb9af7?style=for-the-badge&labelColor=1a1b26&logo=qt&logoColor=white" height="60" />
</p>
<br>

#### 📦 DEPENDENCIES

| | Packages |
|--:|:---|
| **Core** | `quickshell` `qt6-declarative` |
| **Video** | `qt6-multimedia` `qt6-multimedia-ffmpeg` |
| **Font** | `inter-font` |

#### 🚀 INSTALLATION

```sh
chmod +x quickshell.sh && ./quickshell.sh
```

#### ⌨️ SHORTCUT BINDING

Point your window manager keybind (Hyprland, Sway, i3, Qtile...) at:

```sh
~/.local/share/quickshell-lockscreen/lock.sh
```

<br>
<p align="center">━━━━━━━ ❖ ━━━━━━━</p>

<a id="faq"></a>
<br>

<p align="center">
  <img src="https://img.shields.io/badge/-FAQ-7aa2f7?style=for-the-badge&labelColor=1a1b26&logo=helpdesk&logoColor=white" height="60" />
</p>
<br>

#### ⌨️ Virtual keyboard popping up?

If the virtual keyboard opens on its own at the login screen, disable it in your SDDM config

1. Open `/etc/sddm.conf.d/virtualkeyboard.conf` as root
2. Under `[General]`, set `InputMethod` to empty

```ini
[General]
InputMethod=
```

#### 📺 Want a different background?

1. Get any video you like
2. Rename it to `bg.mp4`
3. Replace `themes/pixel-waterfall/bg.mp4` and reinstall

#### ❄️ Quickshell not working on KDE Plasma?

This is a known KWin limitation — Plasma lacks support for the `ext-session-lock-v1` protocol. The SDDM (login) part still works on Plasma; only the Quickshell lockscreen doesn't

<br>
<p align="center">━━━━━━━ ❖ ━━━━━━━</p>

<a id="gallery"></a>
<br>

<p align="center">
  <img src="https://img.shields.io/badge/-GALLERY-9ece6a?style=for-the-badge&labelColor=1a1b26&logo=unsplash&logoColor=white" height="60" />
</p>
<br>

<div align="center">
<table style="border-collapse: collapse; border: none;">
<tr>
<td align="center" width="100%" style="padding: 15px; border: none;">
<b>Pixel · Waterfall</b><br><br>
<img src="./Assets/pixel-waterfall.gif" width="100%" style="border-radius: 12px; box-shadow: 0 4px 15px rgba(0,0,0,0.3);"/>
</td>
</tr>
</table>
</div>

> [!NOTE]
> The preview gif shows the upstream theme — my fork swaps the font to Inter, the mask to `●`, and uses a custom background

<br>
<p align="center">━━━━━━━ ❖ ━━━━━━━</p>

<a id="credits"></a>
<br>

<p align="center">
  <img src="https://img.shields.io/badge/-CREDITS-f7768e?style=for-the-badge&labelColor=1a1b26&logo=kofi&logoColor=white" height="60" />
</p>

<div align="center">

Built on **[qylock](https://github.com/Darkkal44/qylock)** by **[Darkkal44](https://github.com/Darkkal44)** — all the original theme work, scripts and structure are theirs

Font: **[Inter](https://rsms.me/inter/)** by Rasmus Andersson

</div>

<br>
<p align="center">━━━━━━━ ༓ ━━━━━━━</p>

<div align="center">
  <p><i>Make your login your own</i></p>
</div>
