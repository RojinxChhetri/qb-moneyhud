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

![Image-bank](https://cdn.discordapp.com/attachments/873793727041253387/1337006572311810108/bank.png?ex=67c8cfa7&is=67c77e27&hm=2cd77e59b371bb79d699aa1802e1010fcf9b34cf9328c66b6cfdce0485c3bdcb&)

<br>

- **Cash**

<br>

![Image-cash](https://cdn.discordapp.com/attachments/873793727041253387/1337006572722716682/cash.png?ex=67c8cfa7&is=67c77e27&hm=5c1d3fa323f5eaa66cbe3cb92aad8b24b1d9d71d1cbb68a4e54c86559748b253&)


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
