<TeXmacs|2.1.4>

<style|generic>

<\body>
  <doc-data|<doc-title|Single Track Automated Level Crossing using z64
  processor>|<doc-author|<author-data|<author-name|Antonio Bernardini>>>>

  <section|Project>

  <subsection|Requirements>

  A z64 processor manages a single track automated level crossing, composed
  of a <shell|BAR> device and two <shell|BOA> devices. Trains pass on the
  track in both directions.

  The <shell|BOA> device informs the processor of the approach of a train
  from one of the two directions in an <with|font-shape|italic|asynchronous>
  manner. When the processor is alerted, it programs the <shell|BAR> device
  <with|font-shape|italic|synchronously> to lower.

  When the train has passed, the second <shell|BOA> device informs the z64
  that the train has reached a distance of sufficient confidence to raise the
  bar. The processor will then program (always
  <with|font-shape|italic|synchronously>) the device <shell|BAR> to stand up.

  In case a train passes in the opposite direction, the z64 processor will be
  informed by the two <shell|BOA> devices in order reverse. However, the
  functioning of the <shell|BAR> must be the same (first it lowers, then it
  raises).

  To design:

  <\itemize-minus>
    <item>The interfaces of the <shell|BOA> and <shell|BAR> devices

    <item>All the code necessary for the functioning of the level crossing.
  </itemize-minus>

  <subsection|Implementation>

  <subsubsection|Hardware>

  The <shell|BOA> peripheral is represented as a classic
  <with|font-shape|italic|asynchronous daisy chain> device:

  <big-figure|<image|/home/berna/Desktop/computer-architecture-engineering/z64/single-track-automated-level-crossing/peripheral-interfaces/imgs/BOA.png|0.8par|||>|The
  <shell|BOA> peripheral>

  The <shell|BAR> peripheral is represented as a
  <with|font-shape|italic|synchronous> device \ that is used at the firmware
  level by implementing <with|font-shape|italic|busy waiting>:

  <big-figure|<image|/home/berna/Desktop/computer-architecture-engineering/z64/single-track-automated-level-crossing/peripheral-interfaces/imgs/BAR.png|0.8par|||>|The
  <shell|BAR> peripheral>

  <subsubsection|Firmware>

  So, a possible <with|font-shape|italic|firmware implementation> can be
  found <hlink|here|https://github.com/AntonioBerna/computer-architecture-engineering/blob/master/z64/single-track-automated-level-crossing/firmware.s>.
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
    <associate|auto-4|<tuple|1.2.1|?>>
    <associate|auto-5|<tuple|1|?>>
    <associate|auto-6|<tuple|2|?>>
    <associate|auto-7|<tuple|1.2.2|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
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
    </associate>
  </collection>
</auxiliary>