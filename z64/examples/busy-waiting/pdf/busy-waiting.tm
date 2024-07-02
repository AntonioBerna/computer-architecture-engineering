<TeXmacs|2.1.4>

<style|generic>

<\body>
  <doc-data|<doc-title|Busy Waiting example using z64
  processor>|<doc-author|<author-data|<author-name|Antonio Bernardini>>>>

  <section|Project>

  <subsection|Requirements>

  A peripheral <shell|VOLTAGE> allows you to acquire information on the
  electrical voltage of a meter. The device produces data word size as input
  to the z64 processor. Write the code a subroutine (according to
  <with|font-shape|italic|System V ABI calling conventions>) that the number
  of data (one word) to be read from is accepted as parameters peripheral
  <shell|VOLTAGE> and the memory address from which the z64 processor will
  have to start writing the data thus acquired by the peripheral.

  Also write the program that invokes the requested function acquire 100
  words from the <shell|VOLTAGE> device and store them in a vector placed
  starting from address <shell|0x1200>. The maximum size of the vector is 400
  words.

  <subsection|Implementation>

  <subsubsection|Hardware>

  The <shell|VOLTAGE> peripheral is represented as a classic input device:

  <big-figure|<image|/home/berna/Desktop/computer-architecture-engineering/z64/examples/busy-waiting/peripheral-interfaces/input.png|0.8par|||>|The
  <shell|VOLTAGE> peripheral>

  <subsubsection|Firmware>

  So, a possible <with|font-shape|italic|firmware implementation> can be
  found <hlink|here|https://github.com/AntonioBerna/computer-architecture-engineering/blob/master/z64/examples/busy-waiting/firmware.s>.
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|?|../../../../../../.TeXmacs/texts/scratch/no_name_15.tm>>
    <associate|auto-2|<tuple|1.1|?|../../../../../../.TeXmacs/texts/scratch/no_name_15.tm>>
    <associate|auto-3|<tuple|1.2|?|../../../../../../.TeXmacs/texts/scratch/no_name_15.tm>>
    <associate|auto-4|<tuple|1.2.1|?|../../../../../../.TeXmacs/texts/scratch/no_name_15.tm>>
    <associate|auto-5|<tuple|1|?|../../../../../../.TeXmacs/texts/scratch/no_name_15.tm>>
    <associate|auto-6|<tuple|1.2.2|?|../../../../../../.TeXmacs/texts/scratch/no_name_15.tm>>
  </collection>
</references>