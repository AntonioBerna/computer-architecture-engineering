<TeXmacs|2.1.4>

<style|generic>

<\body>
  <doc-data|<doc-title|Motorcycle Gear Shift using z64
  processor>|<doc-author|<author-data|<author-name|Antonio Bernardini>>>>

  <section|Project>

  <subsection|Requirements>

  A z64 processor manages the display that indicates the <shell|GEAR>
  currently in gear on a motorcycle.

  The processor receives an interruption request from the <shell|GEARBOX>
  peripheral every time the driver changes gear. Since the gearbox is
  sequential, the processor must recover the information if from the
  <shell|GEARBOX> device the driver is shifting up or down, reading the value
  of an appropriate register of interface.\ 

  The <shell|GEAR> device is equipped with a seven-segment display. The
  values that can be shown are the following:

  <big-figure|<image|imgs/gear-display.png|0.3par|||>|Gears that can be
  represented on the seven-segment display>

  where the first symbol (<math|n>) indicates that the motorcycle is in
  neutral. The <shell|GEAR> device uses 7-bit words for determine which
  segments of the LED should be lit. Each bit represents the status of one of
  the segments (<math|0 = off, 1 = on>), according to the following scheme,
  where \P <math|a> \Q is the least significant bit:

  <big-figure|<image|imgs/gear-display-bit.png|0.2par|||>|Coding to be used
  to turn on the LED diodes of the seven-segment display>

  To design:

  <\itemize-minus>
    <item>The interfaces of the <shell|GEARBOX> and <shell|GEAR> devices

    <item>All code necessary for the system to function
  </itemize-minus>

  <subsection|Implementation>

  <subsubsection|Hardware>

  The <shell|GEARBOX> peripheral is represented as a classic
  <with|font-shape|italic|asynchronous daisy chain> input device:

  <big-figure|<image|/home/berna/Desktop/computer-architecture-engineering/z64/motorcycle-gear-shift/peripheral-interfaces/imgs/GEARBOX.png|0.8par|||>|The
  <shell|GEARBOX> peripheral>

  The <shell|GEAR> peripheral is represented as a classic
  <with|font-shape|italic|synchronous> output device:

  <big-figure|<image|/home/berna/Desktop/computer-architecture-engineering/z64/motorcycle-gear-shift/peripheral-interfaces/imgs/GEAR.png|0.8par|||>|The
  <shell|GEAR> peripheral>

  <subsubsection|Firmware>

  So, a possible <with|font-shape|italic|firmware implementation> can be
  found <hlink|here|https://github.com/AntonioBerna/computer-architecture-engineering/blob/master/z64/motorcycle-gear-shift/firmware.s>.
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?|../../../../../.TeXmacs/texts/scratch/no_name_15.tm>>
    <associate|auto-2|<tuple|1.1|?|../../../../../.TeXmacs/texts/scratch/no_name_15.tm>>
    <associate|auto-3|<tuple|1|?|../../../../../.TeXmacs/texts/scratch/no_name_15.tm>>
    <associate|auto-4|<tuple|2|?|../../../../../.TeXmacs/texts/scratch/no_name_15.tm>>
    <associate|auto-5|<tuple|1.2|?|../../../../../.TeXmacs/texts/scratch/no_name_15.tm>>
    <associate|auto-6|<tuple|1.2.1|?|../../../../../.TeXmacs/texts/scratch/no_name_15.tm>>
    <associate|auto-7|<tuple|3|?|../../../../../.TeXmacs/texts/scratch/no_name_15.tm>>
    <associate|auto-8|<tuple|4|?|../../../../../.TeXmacs/texts/scratch/no_name_15.tm>>
    <associate|auto-9|<tuple|1.2.2|?|../../../../../.TeXmacs/texts/scratch/no_name_15.tm>>
  </collection>
</references>