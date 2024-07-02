<TeXmacs|2.1.4>

<style|generic>

<\body>
  <doc-data|<doc-title|DMAC example using z64
  processor>|<doc-author|<author-data|<author-name|Antonio Bernardini>>>>

  <section|Project>

  <subsection|Requirements>

  Let <shell|TIMER> be a peripheral of the z64 processor programmed by the
  same for send a stop request every 10 milliseconds. The service associated
  with interrupt request is as follows: the processor must check whether the
  value recorded in the peripheral interface register <shell|TEMPERATURE> is
  greater than 40 degrees (temperature is expressed unsigned using 8 bits).
  In positive case, the processor programs the DMAC to send an alarm message
  to a <shell|MONITOR> interfaced to DMAC. The message is stored in memory.

  At the end of the transfer through the DMAC the processor reactivates
  <shell|TIMER>.

  Design the <shell|TIMER> and <shell|TEMPERATURE> interfaces. Also,
  implement the software to activate <shell|TIMER>, program the DMAC and
  manage the request <shell|TIMER> interruption. In the solution we assume
  that service management associated with interruptions is non-interruptible.

  <subsection|Implementation>

  <subsubsection|Hardware>

  The <shell|TIMER> peripheral is represented as following:

  <big-figure|<image|/home/berna/Desktop/computer-architecture-engineering/z64/examples/DMAC/peripheral-interfaces/TIMER.png|0.5par|||>|The
  <shell|TIMER> peripheral>

  The <shell|TEMPERATURE> peripheral is represented as following:

  <big-figure|<image|/home/berna/Desktop/computer-architecture-engineering/z64/examples/DMAC/peripheral-interfaces/TEMPERATURE.png|0.6par|||>|The
  <shell|TEMPERATURE> peripheral>

  <subsubsection|Firmware>

  So, a possible <with|font-shape|italic|firmware implementation> can be
  found <hlink|here|https://github.com/AntonioBerna/computer-architecture-engineering/blob/master/z64/examples/DMAC/firmware.s>.
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
    <associate|auto-6|<tuple|2|2>>
    <associate|auto-7|<tuple|1.2.2|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|<surround|<hidden-binding|<tuple>|1>||The
      <with|mode|<quote|prog>|prog-language|<quote|shell>|font-family|<quote|rm>|ALARM>
      peripheral>|<pageref|auto-5>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|2>||The
      <with|mode|<quote|prog>|prog-language|<quote|shell>|font-family|<quote|rm>|SENSOR>
      peripheral>|<pageref|auto-6>>
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
      <no-break><pageref|auto-7>>
    </associate>
  </collection>
</auxiliary>