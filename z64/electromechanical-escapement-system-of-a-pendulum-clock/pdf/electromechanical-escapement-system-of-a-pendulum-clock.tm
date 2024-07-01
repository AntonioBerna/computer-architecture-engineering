<TeXmacs|2.1.4>

<style|generic>

<\body>
  <doc-data|<doc-title|Electromechanical escapement system of a pendulum
  clock using z64 processor>|<doc-author|<author-data|<author-name|Antonio
  Bernardini>>>>

  <section|Project>

  <subsection|Requirements>

  A z64 processor controls the electromechanical escapement system of a
  pendulum clock, as per figure. In this system a pair of <shell|PHOTOCELLS>
  detects the passage of the pendulum in two very precise positions,
  interacting asynchronously with the z64 processor.

  <big-figure|<image|imgs/system.png|0.5par|||>|The electromechanical
  escapement system of a pendulum clock>

  The time between passing in front of \ <math|<shell|PHOTOCELL><rsub|1>> and
  <math|<shell|PHOTOCELL><rsub|2>> is measured using a <shell|TIMER>
  synchronous device. This device, once started, begins to measure time, at
  the grain of the milliseconds. When the z64 processor subsequently shuts
  down the device, the elapsed time can be acquired through a specific
  interface register.

  Once the time spent passing in front of the two <shell|PHOTOCELLS> has been
  determined, the z64 activates the device <shell|ELECTROMAGNET> for a time
  equal to <math|<frac|1|64>> of the passage time, in order to provide
  additional energy to the pendulum <shell|TIMER> can also be used to measure
  this time. Note that since there is only one <shell|ELECTROMAGNET>, it is
  not of interest to calculate the time elapsed in the passage between
  <math|<shell|PHOTOCELL><rsub|2>> and <math|<shell|PHOTOCELL><rsub|1>>.

  To design:

  <\itemize-minus>
    <item>The interfaces of the <shell|PHOTOCELL>, <shell|TIMER>,
    <shell|ELECTROMAGNET> peripherals

    <item>All the software necessary to operate the system, including any
    drivers
  </itemize-minus>

  <underline|Tip>: starting and stopping <shell|TIMER> can be interpreted as
  two different operations.

  <subsection|Implementation>

  <subsubsection|Hardware>

  The <shell|ELECTROMAGNET> peripheral is represented as a simple button on
  which you can directly write the values 0 and 1 to turn the device on/off:

  <big-figure|<image|/home/berna/Desktop/computer-architecture-engineering/z64/electromechanical-escapement-system-of-a-pendulum-clock/peripheral-interfaces/imgs/ELECTROMAGNET.png|0.8par|||>|The
  <shell|ELECTROMAGNET> peripheral>

  The <shell|PHOTOCELL> peripheral is represented as a device that operates
  in <with|font-shape|italic|mixed mode>, i.e. both
  <with|font-shape|italic|synchronously> and
  <with|font-shape|italic|asynchronously> but ensuring that we have control
  for interruption requests:

  <big-figure|<image|/home/berna/Desktop/computer-architecture-engineering/z64/electromechanical-escapement-system-of-a-pendulum-clock/peripheral-interfaces/imgs/PHOTOCELL.png|0.8par|||>|The
  <shell|PHOTOCELL> peripheral>

  The <shell|TIMER> peripheral requires to be explicitly started and stopped:

  <big-figure|<image|/home/berna/Desktop/computer-architecture-engineering/z64/electromechanical-escapement-system-of-a-pendulum-clock/peripheral-interfaces/imgs/TIMER.png|0.8par|||>|The
  <shell|TIMER> peripheral>

  <subsubsection|Firmware>

  So, a possible <with|font-shape|italic|rmware implementation> can be found
  <hlink|here|https://github.com/AntonioBerna/computer-architecture-engineering/blob/master/z64/electromechanical-escapement-system-of-a-pendulum-clock/firmware.s>.
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|auto-1|<tuple|1|1|../../../../../.TeXmacs/texts/scratch/no_name_15.tm>>
    <associate|auto-2|<tuple|1.1|1|../../../../../.TeXmacs/texts/scratch/no_name_15.tm>>
    <associate|auto-3|<tuple|1|1|../../../../../.TeXmacs/texts/scratch/no_name_15.tm>>
    <associate|auto-4|<tuple|1.2|1|../../../../../.TeXmacs/texts/scratch/no_name_15.tm>>
    <associate|auto-5|<tuple|1.2.1|1|../../../../../.TeXmacs/texts/scratch/no_name_15.tm>>
    <associate|auto-6|<tuple|2|2|../../../../../.TeXmacs/texts/scratch/no_name_15.tm>>
    <associate|auto-7|<tuple|3|2|../../../../../.TeXmacs/texts/scratch/no_name_15.tm>>
    <associate|auto-8|<tuple|4|2|../../../../../.TeXmacs/texts/scratch/no_name_15.tm>>
    <associate|auto-9|<tuple|1.2.2|2|../../../../../.TeXmacs/texts/scratch/no_name_15.tm>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|<surround|<hidden-binding|<tuple>|1>||The
      electromechanical escapement system of a pendulum
      clock>|<pageref|auto-3>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|2>||The
      <with|mode|<quote|prog>|prog-language|<quote|shell>|font-family|<quote|rm>|ELECTROMAGNET>
      peripheral>|<pageref|auto-6>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|3>||The
      <with|mode|<quote|prog>|prog-language|<quote|shell>|font-family|<quote|rm>|PHOTOCELL>
      peripheral>|<pageref|auto-7>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|4>||The
      <with|mode|<quote|prog>|prog-language|<quote|shell>|font-family|<quote|rm>|TIMER>
      peripheral>|<pageref|auto-8>>
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