# qb-moneyhud

qb-moneyhud is a dynamic money HUD resource for the QBCore framework in FiveM. It displays your current cash and bank balances on-screen with smooth animations and auto-updates when your money changes. Players can also check their balances using the `/cash` and `/bank` commands.

## Features

- **Dynamic HUD Display:**  
  Shows current cash and bank balances with animated transitions (fade in/out) that update automatically when money values change.
  
- **Auto-Updating:**  
  The HUD listens for QBCore events and updates in real time when your money changes.
  
- **Chat Commands:**  
  Players can display their balance at any time using the `/cash` and `/bank` commands.
  
- **Customizable UI:**  
  The user interface is defined in `html/index.html` and can be easily modified to suit your style.

## Previews

- **Bank**

![(https://user-images.githubusercontent.com/91661118/171066080-6bc11bb8-7cde-460b-8d73-bbc329644c83.gif)](https://media.discordapp.net/attachments/873793727041253387/1337006572311810108/bank.png?ex=67a5dfe7&is=67a48e67&hm=54c83e660b1fd0f992a793686f55cd560596c93dcae161d2ac5b26a9543c9eb2&=&format=webp&quality=lossless)

<br>

- **Cash**

<br>

![alt text](https://cdn.discordapp.com/attachments/873793727041253387/1337006572722716682/cash.png?ex=67afc327&is=67ae71a7&hm=ebed3e42c4e448bffb4075b1faed092ec1fbda0ff8c3bd8a20435bd974108d17&)

## Installation

1. **Download/Clone the Repository:**

   ```bash
   git clone https://github.com/RojinxChhetri/qb-moneyhud.git
   ```

2. **Place the Resource:**

   Move the `qb-moneyhud` folder into your server's `resources` directory.

3. **Update `server.cfg`:**

   Add the following line to your server configuration file:
   
   ```cfg
   ensure qb-moneyhud
   ```

## Usage

- **Automatic HUD Updates:**  
  The HUD automatically updates whenever your cash or bank values change, using QBCore events and the internal polling mechanism.
  
- **Chat Commands:**
  - `/cash` – Displays your current cash balance on-screen.
  - `/bank` – Displays your current bank balance on-screen.

## Customization

- **UI & Animations:**  
  Modify `html/index.html` to change the appearance, animations, or styling of the HUD.
  
- **Auto Fade Delay:**  
  Adjust the `AUTO_FADE_DELAY` constant (in milliseconds) in `html/index.html` to change how long the HUD remains visible before fading out.

## License

This project is licensed under the **NonCommercial License 1.0**. See the [LICENSE](LICENSE) file for details.

## Credits

- Created by Rojin Chhetri.
