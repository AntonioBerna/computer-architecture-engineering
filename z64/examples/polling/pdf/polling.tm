<TeXmacs|2.1.4>

<style|generic>

<\body>
  <doc-data|<doc-title|Polling example using z64
  processor>|<doc-author|<author-data|<author-name|Antonio Bernardini>>>>

  <section|Project>

  <subsection|Requirements>

  Four devices <shell|P1>, <shell|P2>, <shell|P3>, <shell|P4> produce
  word-sized data as input to the z64 processor. Write the code for a
  subroutine laws that we accept as parameters (according to the
  <with|font-shape|italic|System V ABI>) the number of data (bytes) to read
  from the peripherals and the address of memory from which the z64 processor
  will have to start writing data thus acquired. Also write the program that
  calls the function read asking to acquire 100 words from the equipment and
  to store them in a vector starting from address <shell|0x1200>.

  <underline|ATTENTION>: 100 data can not necessarily be read respecting the
  order of the peripherals (for example 10 from <shell|P1>, 23 from
  <shell|P2>, etc.)

  <subsection|Implementation>

  <subsubsection|Hardware>

  The <shell|P1>, <shell|P2>, <shell|P3>, <shell|P4> peripherals are
  represented as a classic input devices:

  <big-figure|<image|/home/berna/Desktop/computer-architecture-engineering/z64/examples/busy-waiting/peripheral-interfaces/input.png|0.8par|||>|The
  <shell|P1>, <shell|P2>, <shell|P3>, <shell|P4> peripherals>

  <subsubsection|Firmware>

  So, a possible <with|font-shape|italic|firmware implementation> can be
  found <hlink|here|https://github.com/AntonioBerna/computer-architecture-engineering/blob/master/z64/examples/polling/firmware.s>.
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-3|<tuple|1.2|1>>
    <associate|auto-4|<tuple|1.2.1|1>>
    <associate|auto-5|<tuple|1|1>>
    <associate|auto-6|<tuple|1.2.2|1>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|<surround|<hidden-binding|<tuple>|1>||The
      <with|mode|<quote|prog>|prog-language|<quote|shell>|font-family|<quote|rm>|VOLTAGE>
      peripheral>|<pageref|auto-5>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Project>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Requirements
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Implementation
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|2tab>|1.2.1<space|2spc>Hardware
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|2tab>|1.2.2<space|2spc>Firmware
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-6>>
    </associate>
  </collection>
</auxiliary>