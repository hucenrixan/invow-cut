# Invow Cut — Mac setup

Invow Cut runs in the browser. On a Mac you can use the live site or run a local copy.

## Option 1: use the live site (easiest)

1. Open **Google Chrome** (or Edge). Safari and Firefox do not support Web Serial.
2. Go to https://invow-cut.vercel.app
3. Plug in the cutter by USB, click **Connect**, and pick the `usbserial` port.

## Option 2: run a local copy

1. Open **Terminal** and download the code:
   ```
   git clone https://github.com/hucenrixan/invow-cut.git
   cd invow-cut
   ```
   If macOS asks to install the command line developer tools, accept.
2. Start the app:
   ```
   chmod +x "Start Invow Cut (Mac).command"
   ./"Start Invow Cut (Mac).command"
   ```
   Or double-click `Start Invow Cut (Mac).command` in Finder. If macOS blocks it, right-click it, choose **Open**, then **Open** again.
3. Get later updates with `git pull`.

## Connect the cutter

- Cutter settings: **DMPL, 38400 baud, 8N1, hardware (RTS/CTS) handshake**.
- The cutter uses an FTDI USB chip. Recent macOS versions include the driver. If no port appears, install the FTDI VCP driver from ftdichip.com and restart.
- In Chrome, click **Connect** and choose the port named like `/dev/cu.usbserial-XXXX`.
- Close any other program that uses the cutter before connecting.
- Put the vinyl under the blade on the **left** side and press **Origin** before cutting.
- Always start with the 20 mm test square.

## Save changes from the Mac

```
git add -A
git commit -m "describe the change"
git push
```

Log in to GitHub when asked. Each push to `main` redeploys the live site on Vercel.

## Deploy from the Mac (optional)

Only needed for manual deploys. A normal `git push` already deploys.

1. Install Node.js from https://nodejs.org
2. Run:
   ```
   npm i -g vercel
   vercel login
   vercel link --project invow-cut
   vercel env pull
   ```
3. `vercel env pull` recreates `.env.local`. Do not copy this file or any token between computers, and do not commit it. It is already in `.gitignore`.

## Not tested

This guide was written on Windows. The Mac steps have not been tried on a real Mac with the cutter.
