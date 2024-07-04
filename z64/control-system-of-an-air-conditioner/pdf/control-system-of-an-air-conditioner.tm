<TeXmacs|2.1.4>

<style|generic>

<\body>
  <doc-data|<doc-title|Control system of an air conditioner using z64
  processor>|<doc-author|<author-data|<author-name|Antonio Bernardini>>>>

  <section|Project>

  <subsection|Requirements>

  A processor z64 manages the control system of an air conditioner. Via the
  synchronous peripheral <shell|THERMOMETER> is able to read the current
  temperature of the room, represented as an unsigned byte.

  The user of the air conditioner has an infrared remote control at his
  disposal which allows him to set the desired temperature and operating mode
  (fan, dehumidifier, air conditioner). When the button is pressed
  confirmation, the remote control transmits the desired configuration to a
  peripheral <shell|RECEIVER> which warns in asynchronous mode the z64 of the
  required setting change.

  The peripheral <shell|RECEIVER> has an interface register available through
  which it is possible to recover the required configuration. This
  configuration is an 8-bit word, composed as follows:

  <\itemize-minus>
    <item>Bit 7 (most significant) is a Boolean flag that indicates that you
    want to activate fan mode

    <item>Bit 6 is a Boolean flag that indicates whether you want to activate
    the dehumidifier mode

    <item>Bit 5 is a Boolean flag that indicates whether you want to activate
    the air conditioner mode

    <item>The 5 least significant bits represent an unsigned integer
    indicating the required temperature
  </itemize-minus>

  For example, this configuration indicates turning on the dehumidifier to
  reach a temperature of <math|23 <rsup|\<circ\>>C>:

  <big-table|<tabular|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-tborder|1ln>|<cwith|1|-1|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|-1|cell-lborder|1ln>|<cwith|1|-1|1|-1|cell-rborder|1ln>|<table|<row|<cell|7>|<cell|6>|<cell|5>|<cell|4>|<cell|3>|<cell|2>|<cell|1>|<cell|0>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>>>>>|Example
  configuration>

  Upon receiving the interrupt request from <shell|RECEIVER>, the z64
  processor recovers the configuration request and activates/deactivates the
  synchronous <shell|FAN>, <shell|DEHUMIDIFIER> and <shell|AIR CONDITIONER>
  peripherals, depending on the user request.

  The <shell|FAN> peripheral has a byte-sized interface register available
  which allows you to specify the rotation speed, according to the following
  algorithm:

  <\itemize-minus>
    <item>if the difference between the current and requested temperature is
    <math|\<less\>4 <rsup|\<circ\>>C>, the fan is activated at speed 1

    <item>if the difference between the current temperature and the requested
    one is between <math|4 <rsup|\<circ\>>C> and <math|8 <rsup|\<circ\>>C>,
    it is activated at speed 2

    <item>otherwise it is activated at speed 3
  </itemize-minus>

  To design:

  <\itemize-minus>
    <item>The interfaces of the <shell|THERMOMETER>, <shell|RECEIVER>,
    <shell|FAN> peripherals (it is <underline|NOT> necessary to create the
    interfaces of the <shell|DEHUMIDIFIER> and <shell|AIR CONDITIONER>
    peripherals)

    <item>All the software necessary to operate the system, including any
    drivers
  </itemize-minus>

  <subsection|Implementation>

  <subsubsection|Hardware>

  The <shell|THERMOMETER> peripheral is a synchronous input device, which
  provides 8-bit data:

  <big-figure|<image|/home/berna/Desktop/computer-architecture-engineering/z64/control-system-of-an-air-conditioner/peripheral-interfaces/THERMOMETER.png|0.8par|||>|The
  <shell|THERMOMETER> peripheral>

  The <shell|RECEIVER> peripheral is input asynchronous:

  <big-figure|<image|/home/berna/Desktop/computer-architecture-engineering/z64/control-system-of-an-air-conditioner/peripheral-interfaces/RECEIVER.png|0.8par|||>|The
  <shell|RECEIVER> peripheral>

  The <shell|FAN> peripheral is synchronous in output, with an 8-bit register
  (since for the maximum value of the speed that you want to represent, one
  byte is enough):

  <big-figure|<image|/home/berna/Desktop/computer-architecture-engineering/z64/control-system-of-an-air-conditioner/peripheral-interfaces/FAN.png|0.8par|||>|The
  <shell|FAN> peripheral>

  <subsubsection|Firmware>

  So, a possible <with|font-shape|italic|rmware implementation> can be found
  <hlink|here|https://github.com/AntonioBerna/computer-architecture-engineering/blob/master/z64/control-system-of-an-air-conditioner/firmware.s>.
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
    <associate|auto-3|<tuple|1|1>>
    <associate|auto-4|<tuple|1.2|2>>
    <associate|auto-5|<tuple|1.2.1|2>>
    <associate|auto-6|<tuple|1|2>>
    <associate|auto-7|<tuple|2|2>>
    <associate|auto-8|<tuple|3|2>>
    <associate|auto-9|<tuple|1.2.2|2>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|<surround|<hidden-binding|<tuple>|1>||The
      <with|mode|<quote|prog>|prog-language|<quote|shell>|font-family|<quote|rm>|THERMOMETER>
      peripheral>|<pageref|auto-6>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|2>||The
      <with|mode|<quote|prog>|prog-language|<quote|shell>|font-family|<quote|rm>|RECEIVER>
      peripheral>|<pageref|auto-7>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|3>||The
      <with|mode|<quote|prog>|prog-language|<quote|shell>|font-family|<quote|rm>|FAN>
      peripheral>|<pageref|auto-8>>
    </associate>
    <\associate|table>
      <tuple|normal|<surround|<hidden-binding|<tuple>|1>||Example
      configuration>|<pageref|auto-3>>
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
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|2tab>|1.2.1<space|2spc>Hardware
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-5>>

      <with|par-left|<quote|2tab>|1.2.2<space|2spc>Firmware
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>
    </associate>
  </collection>
</auxiliary>