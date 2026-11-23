INVOW CUT 2 - vinyl cutter software
===================================
START
  Windows: double-click "Invow Cut" on the Desktop (or "Start Invow Cut.bat").
  Mac:     copy this whole folder to the Mac, double-click "Start Invow Cut (Mac).command"
           (first time: right-click > Open). Needs Google Chrome or Microsoft Edge.
           On Mac the cutter shows as "FT232R USB UART" when you click Connect.

FIRST TIME
  1. Close SignMaster (only one program can use the cutter).
  2. Cutter: Reset, load vinyl, rollers down, Origin, not paused.
  3. Connect cutter -> choose "USB Serial Port (COM3)" -> Connect.
  4. Test cut: square must be 20 mm, letter F must read normally.
     Size wrong -> Machine tab: steps per mm = 40 x 20 / measured mm
     F mirrored or sideways -> Machine tab: Flip across / Flip feed / Swap X/Y

DESIGN
  + Text ........... any font; Curve slider = text on an arc or full circle
  + Shape .......... rectangle, rounded, circle, star, polygon, heart, arrow, badge
  Import SVG ....... logos; each colour in the file becomes its own layer
  Trace image ...... PNG/JPG logo -> cut lines
  Weld ............. join overlapping shapes into one
  Subtract ......... cut the top shape out of the others
  Intersect ........ keep only the overlap
  Break apart ...... split into separate pieces
  Outline / Offset . sticker border, outline, or inset
  Copies grid ...... many stickers at once
  Nest ............. auto-pack pieces close together to save vinyl
  Select several: Shift+click or drag a box. Object tab has Align tools.

COLOURS (Layers tab)
  Give each object a vinyl colour. CUT asks which colour to cut - load that
  vinyl, press Origin, cut, then the next colour. Tick "Alignment marks"
  (Job tab) to line the colours up.

SHOP
  Price tab ....... vinyl used, cut length, cutting time and a price quote
                    (set your own prices once). "Copy quote text" for WhatsApp/email.
  Material tab .... presets (normal vinyl, HTV, glitter, reflective...) for
                    passes, overcut, mirror and the force to set on the cutter.
  History ......... every cut job is saved with customer name - search it,
                    Open it, or "Cut again" with one click. Export CSV.
  Job tab ......... job name, customer, mirror, weed box, passes, overcut.

SAVE / OPEN projects as .vcut files. Work is also auto-saved.

SILHOUETTE CAMEO 4
  Job tab > Export DXF (Cameo). Open the .dxf in Silhouette Studio (free Basic edition)
  with File > Open, check the size, and cut from there. SVG export needs a paid edition.

BACKUP WAY TO CUT (Windows): "Save cut file (.plt)" then drag the file onto
"Send file to cutter.bat".

Cutter settings: DMPL, 38400 baud, 8N1, hardware handshake, 40 steps/mm.
Version 1 is kept as InvowCut-v1-backup.html.

