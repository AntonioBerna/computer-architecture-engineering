<TeXmacs|2.1.4>

<style|generic>

<\body>
  <doc-data|<doc-title|Room monitoring example using z64
  processor>|<doc-author|<author-data|<author-name|Antonio Bernardini>>>>

  <section|Project>

  <subsection|Requirements>

  A room is monitored by four temperature sensors (therefore a <shell|SENSOR>
  peripheral must be set up), which are driven by a z64 processor. The latter
  constantly checks that the average temperature value detected in the room
  is within the range <math|[T<rsub|min>, T<rsub|max>]>.

  If the temperature does not fall within this range, the microprocessor
  sends an alarm signal to a specific peripheral (<shell|ALARM>). The alarm
  signal used is the value 1 coded with 8 bits. If the temperature returns to
  the range <math|[T<rsub|min>, T<rsub|max>]>, the CPU transmits the value 0
  to the peripheral.

  The sensors return the measured temperature as a 16-bit integer, using
  tenths of a degree Celsius as the unit of measurement.

  Write Assembly code to control temperature sensors and of the <shell|ALARM>
  peripheral, using the interruption mechanism vectorized.

  <subsection|Implementation>

  <subsubsection|Hardware>

  Below are the project choices:

  <\itemize-minus>
    <item>The temperature measurements of the four sensors are stored within
    a vector of four elements

    <item>When the system starts, the four measures are forced to the center
    of the interval <math|<around*|[|T<rsub|min>,T<rsub|max>|]>>

    <item>The <shell|SENSOR> is an input device consisting of a read-only
    register that contains the measured value

    <item>If the temperature is negative, the sensor still returns the value
    0

    <item><shell|ALARM> is an output device, which activates/deactivates a
    siren flashing. A flip/flop connected to the least significant bit of the
    data bus turns the alarm on/off when set/reset.

    <item><shell|ALARM> is a <with|font-shape|italic|passive peripheral>: it
    does not have a CU
  </itemize-minus>

  The <shell|ALARM> peripheral is represented as following:

  <big-figure|<image|/home/berna/Desktop/computer-architecture-engineering/z64/examples/room-monitoring/peripheral-interfaces/ALARM.png|0.5par|||>|The
  <shell|ALARM> peripheral>

  The <shell|SENSOR> peripheral is represented as following:

  <big-figure|<image|/home/berna/Desktop/computer-architecture-engineering/z64/examples/room-monitoring/peripheral-interfaces/SENSOR.png|0.7par|||>|The
  <shell|SENSOR> peripheral>

  <subsubsection|Firmware>

  So, a possible <with|font-shape|italic|firmware implementation> can be
  found <hlink|here|https://github.com/AntonioBerna/computer-architecture-engineering/blob/master/z64/examples/room-monitoring/firmware.s>.
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
    <associate|auto-6|<tuple|2|1>>
    <associate|auto-7|<tuple|1.2.2|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|<surround|<hidden-binding|<tuple>|1>||The
      <with|mode|<quote|prog>|prog-language|<quote|shell>|font-family|<quote|rm>|PRODUCER>
      peripheral>|<pageref|auto-5>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|2>||The
      <with|mode|<quote|prog>|prog-language|<quote|shell>|font-family|<quote|rm>|CONSUMER>
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