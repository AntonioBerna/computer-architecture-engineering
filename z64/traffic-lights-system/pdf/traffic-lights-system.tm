<TeXmacs|2.1.4>

<style|generic>

<\body>
  <doc-data|<doc-title|Traffic Lights System using z64
  processor>|<doc-author|<author-data|<author-name|Antonio Bernardini>>>>

  <section|Project>

  <subsection|Requirements>

  A z64 processor controls the traffic light system of a pedestrian
  intersection. When the <shell|BUTTON> is pressed, the processor programs
  the traffic lights of the cars to go from green to yellow and then from
  yellow to red. At the same time the pedestrian <shell|TRAFFIC LIGHT>
  changes from red to green and then to yellow and then to red. To manage the
  transitions, the processor uses a programmable <shell|TIMER> peripheral: it
  receives the number of seconds after which it will have to send an
  interrupt to the processor.

  The transition times are defined as follows:

  <\itemize-minus>
    <item>After pressing the button, 10 seconds pass before switching to
    yellow for cars and a further 3 seconds to switch to red

    <item>Green for pedestrians remains for 30 seconds, followed by 45
    seconds of yellow
  </itemize-minus>

  Even without pressing the button, the TRAFFIC LIGHT carries out a
  pedestrian crossing cycle every 5 minutes.

  To design:

  <\itemize-minus>
    <item>The interfaces of the <shell|TRAFFIC LIGHT>, <shell|BUTTON>,
    <shell|TIMER> peripherals.

    <item>Device drivers and management software.
  </itemize-minus>

  <subsection|Implementation>

  <subsubsection|Hardware>

  The <shell|BUTTON> peripheral is represented as a classic
  <with|font-shape|italic|asynchronous daisy chain> device:

  <big-figure|<image|/home/berna/Desktop/computer-architecture-engineering/z64/traffic-lights-system/peripheral-interfaces/imgs/BUTTON.png|0.8par|||>|The
  <shell|BUTTON> peripheral>

  The <shell|TRAFFIC LIGHT> peripheral is represented as an output device
  that is used at the firmware level by implementing
  <with|font-shape|italic|busy waiting>:

  <big-figure|<image|/home/berna/Desktop/computer-architecture-engineering/z64/traffic-lights-system/peripheral-interfaces/imgs/TRAFFIC-LIGHT.png|0.8par|||>|The
  <shell|TRAFFIC LIGHT> peripheral>

  Finally, the <shell|TIMER> peripheral is represented as a device that
  operates in <with|font-shape|italic|mixed mode>, i.e. both
  <with|font-shape|italic|synchronously> and
  <with|font-shape|italic|asynchronously>:

  <big-figure|<image|/home/berna/Desktop/computer-architecture-engineering/z64/traffic-lights-system/peripheral-interfaces/imgs/TIMER.png|0.8par|||>|The
  <shell|TIMER> peripheral>

  <subsubsection|Firmware>

  So, a possible <with|font-shape|italic|firmware implementation> can be
  found <hlink|here|https://github.com/AntonioBerna/computer-architecture-engineering/blob/master/z64/traffic-lights-system/firmware.s>.
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
    <associate|auto-7|<tuple|3|2>>
    <associate|auto-8|<tuple|1.2.2|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|<surround|<hidden-binding|<tuple>|1>||The
      <with|mode|<quote|prog>|prog-language|<quote|shell>|font-family|<quote|rm>|BUTTON>
      peripheral>|<pageref|auto-5>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|2>||The
      <with|mode|<quote|prog>|prog-language|<quote|shell>|font-family|<quote|rm>|TRAFFIC
      LIGHT> peripheral>|<pageref|auto-6>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|3>||The
      <with|mode|<quote|prog>|prog-language|<quote|shell>|font-family|<quote|rm>|TIMER>
      peripheral>|<pageref|auto-7>>
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
      <no-break><pageref|auto-8>>
    </associate>
  </collection>
</auxiliary>