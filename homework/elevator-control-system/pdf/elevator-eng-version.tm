<TeXmacs|2.1.4>

<style|generic>

<\body>
  <doc-data|<doc-title|Elevator control system>|<doc-author|<author-data|<author-name|Antonio
  Bernardini>>>>

  <\table-of-contents|toc>
    <vspace*|1fn><with|font-series|bold|math-font-series|bold|1<space|2spc>Homework>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-1><vspace|0.5fn>

    <with|par-left|1tab|1.1<space|2spc>Introduction
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-2>>

    <with|par-left|1tab|1.2<space|2spc>Floor call management and movement
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-3>>

    <with|par-left|1tab|1.3<space|2spc>Codings
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-4>>

    <with|par-left|1tab|1.4<space|2spc>Inputs
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-7>>

    <with|par-left|1tab|1.5<space|2spc>How to make the circuit
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-8>>

    <with|par-left|1tab|1.6<space|2spc>Suggestions
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-9>>

    <vspace*|1fn><with|font-series|bold|math-font-series|bold|2<space|2spc>Solution>
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-10><vspace|0.5fn>

    <with|par-left|1tab|2.1<space|2spc>Introduction
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-11>>

    <with|par-left|1tab|2.2<space|2spc>Design choices
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-12>>

    <with|par-left|1tab|2.3<space|2spc>7-segment display for floors
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-13>>

    <with|par-left|1tab|2.4<space|2spc>16-segment display for status
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-19>>

    <with|par-left|1tab|2.5<space|2spc>Buffering pending requests
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-28>>

    <with|par-left|1tab|2.6<space|2spc>Reset Management
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-30>>

    <with|par-left|1tab|2.7<space|2spc>Detector for a generic floor
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-32>>

    <with|par-left|1tab|2.8<space|2spc>Signal for arrival at destination
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-34>>

    <with|par-left|1tab|2.9<space|2spc>Request Management
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-36>>

    <with|par-left|1tab|2.10<space|2spc>Direction buffering
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-48>>

    <with|par-left|1tab|2.11<space|2spc>Finite State Automaton for State
    Management <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-50>>

    <with|par-left|2tab|2.11.1<space|2spc>7-segment display for timer
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-53>>

    <with|par-left|2tab|2.11.2<space|2spc>Timer Management
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-57>>

    <with|par-left|1tab|2.12<space|2spc>Finite State Automaton for Floor
    Management <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-60>>

    <with|par-left|1tab|2.13<space|2spc>Conclusion
    <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
    <no-break><pageref|auto-63>>
  </table-of-contents>

  <section|Homework>

  <subsection|Introduction>

  For this homework you were asked to design and implement the control system
  of an elevator in a 3-story building, plus the ground floor and a top
  <with|font-shape|italic|VIP floor>, described below. The elevator can be in
  the following states:

  <\itemize>
    <item><with|font-shape|italic|Waiting>: The elevator is waiting to be
    called to a floor.

    <item><with|font-shape|italic|Up or Down Movement>: The elevator is
    moving in a specific direction.

    <item><with|font-shape|italic|Stop>: The elevator stops upon arrival at a
    floor where a reservation has been made.

    <item><with|font-shape|italic|Door opening>: The doors open and remain
    open for 9 seconds.
  </itemize>

  An arrival sensor is installed on each floor which, when it detects the
  presence of the elevator, raises a signal <math|A<rsub|x>> to indicate that
  it has arrived at floor <math|x>.

  <subsection|Floor call management and movement>

  The passage to a floor can be booked either from the floor itself or from
  inside the elevator, with the appropriate button panel. It is possible to
  book the passage to any floor in any state, even while the elevator is
  moving. The call to a specific floor is buffered in a specifically
  dedicated memory element and remains in the \Prequest made\Q state until
  the elevator arrives at the floor involved in the request.

  If already in motion, the elevator proceeds in its direction of travel
  until it has reached the last floor for which there is a call, in that
  direction. For example, if the elevator has reached the second floor in
  upward direction and there are two calls, one for the third and one for the
  first, the elevator will give priority to the third floor since it can be
  reached in the same direction of travel.

  Conversely, when the elevator reaches a floor and there are only calls from
  floors reachable in the opposite direction, it will reverse direction.

  If there is no call when the doors close, the elevator will remain (with
  the doors closed) in the waiting state. If in this state the elevator
  receives a call from the floor where it is present, it will simply open the
  doors.

  This basic operation is modified by the last (fourth) floor: the
  <with|font-shape|italic|VIP floor>. If a request to go to the
  <with|font-shape|italic|VIP floor> has been received, if the elevator is
  moving in that direction (i.e. upwards), it will
  <with|font-shape|italic|skip all other stops> until it reaches the
  <with|font-shape|italic|VIP floor>. Conversely, if it is moving in the
  opposite direction (i.e. downwards), it will only reach the next floor for
  which a request to go has been received and then reverse direction.

  <subsection|Codings>

  The elevator shall track the following states, using the following
  encodings:

  <big-table|<math|<tabular|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|6|6|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|4|4|cell-rborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|4|4|cell-rborder|1ln>|<cwith|1|-1|1|3|cell-background|pastel
  blue>|<cwith|1|-1|4|4|cell-background|pastel
  green>|<table|<row|<cell|z<rsub|2>>|<cell|z<rsub|1>>|<cell|z<rsub|0>>|<cell|State>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|Waiting>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|Up
  Movement>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|Down
  Movement>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|Door
  Opening>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|Stop>>>>>>|Elevator State
  Coding<label|elevator-states>>

  The stop state corresponds to the moment in which the elevator arrives at a
  floor for which a stop has been requested, signaled by the <math|A<rsub|x>>
  signal. After stopping, the elevator must open the doors and keep them open
  for 9 seconds.

  The elevator also needs to keep track of which floor it is on at any given
  moment in time. For this purpose, the following variables are used:

  <big-table|<math|<tabular|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|6|6|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|4|4|cell-rborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|4|4|cell-rborder|1ln>|<cwith|1|-1|1|3|cell-background|pastel
  blue>|<cwith|1|-1|4|4|cell-background|pastel
  green>|<table|<row|<cell|y<rsub|2>>|<cell|y<rsub|1>>|<cell|y<rsub|0>>|<cell|Floor>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|T>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|1>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|2>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|3>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|VIP>>>>>>|Elevator
  Floor Coding<label|elevator-floor>>

  When the system starts, it can be assumed that the elevator is at floor
  <math|T> in the waiting state.

  <subsection|Inputs>

  The elevator control system inputs are of two families: the first family
  consists of the previously mentioned <math|A<rsub|x>> signals that are
  raised when an elevator reaches a floor. These signals are only 1 when the
  elevator is detected, and then return to zero.

  The second family consists of the <math|P<rsub|x>> signals that indicate
  the call to floor <math|x>. These signals are worth 1 only when the call
  button is pressed, and then return to zero. It is therefore necessary to
  buffer these signals in appropriate ways.

  <subsection|How to make the circuit>

  The circuit solution must be inserted into the circuit.dig file, which can
  be modified using the <hlink|Digital|https://github.com/hneemann/Digital>
  circuit editor and simulator. The <shell|circuit.dig> file already
  specifies the inputs and outputs of the circuit.

  <subsection|Suggestions>

  <\enumerate>
    <item>To measure time, you can use a <with|font-shape|italic|clock> set
    to a suitable frequency and \Pcount\Q the passage of time with a suitable
    number of states. For example, to count 5 seconds, you can use a clock
    set to <math|1 Hz> and use 5 states. The clock in <shell|circuit.dig> is
    already set to <math|1 Hz>.

    <item>It is possible to <with|font-shape|italic|decompose> a single state
    machine into multiple state machines that control the operation of
    different parts of the system in a coordinated manner. The state of one
    state machine can be used as an input to another. Likewise, the output of
    one state machine can become the input to another. In this way, it is
    possible to study the problems separately and compose a final solution.

    <item>State transitions are not necessarily due to the change of a single
    input variable. The \Pinput characters\Q in this case can correspond to a
    boolean value calculated by an arbitrary boolean function, which
    processes system input signals and variables stored in appropriate memory
    elements in an appropriate manner. Some transitions can be \Pautomatic\Q,
    simply linked to the receipt of a certain number of clock pulses.
  </enumerate>

  <section|Solution>

  <subsection|Introduction>

  Analyzing the <shell|circuit.dig> file for the first time we notice the
  presence of 10 inputs, respectively <math|P<rsub|0>,\<ldots\>P<rsub|3>,P<rsub|VIP>>
  for calls and <math|A<rsub|0>,\<ldots\>,A<rsub|3>,A<rsub|VIP>> for
  arrivals, of 6 transitions, respectively
  <math|y<rsub|2>,y<rsub|1>,y<rsub|0>> for floors and
  <math|z<rsub|2>,z<rsub|1>,z<rsub|0>> for states, and finally the
  <with|font-shape|italic|clock> set to <math|1 Hz>. Furthermore, there is no
  explicit output, in fact the transitions, before becoming such, \Ppass\Q
  through D flip-flops by definition of a finite state automaton and, in the
  case of the elevator, it does not have a real output, but it will be
  necessary for it to show both the floor and the state at a given time
  instant, therefore these transitions also act as output. We are faced with
  a problem that can certainly be modeled with Mealy and/or Moore machines,
  but not directly. In fact, it is necessary to simplify the problem using
  the famous <with|font-shape|italic|divide and conquer> technique and we
  will see in this document how to do it. Enjoy the reading.

  <subsection|Design choices>

  As for the design choices, I would like to start from the end. In
  particular, we will implement a system for displaying the floors and
  elevator states using a 7-segment display for the floors and 4 16-segment
  displays for the states. In fact, by keeping the outputs of the
  <shell|circuit.dig> file, we would have a binary encoding of the floors and
  states and this would make it more difficult to read by an average user who
  is assumed not to be an engineer. Subsequently, as required by the
  specifications, we should buffer the <math|P<rsub|x>> calls in specific
  memory elements. For example, SR flip-flops are more than enough to do
  this. We will understand how to manage the <math|RESET> signals of the SR
  flip-flops and we will generate several \Pcustom\Q signals, such as
  <math|DESTINATION> and <math|CK<rsub|2>>, useful for solving small
  problems. Subsequently, we will try to analyze the problem of request
  management using specific <math|UP, STOP, DOWN> signals to manage
  priorities through a dedicated circuit, and at the same time we will buffer
  the previous direction of the elevator, always in specific memory elements.
  Finally we will deal with the realization of finite state automata, both
  for states and for planes, with the dedicated circuit for managing the
  Timer. Let's start!

  <subsection|7-segment display for floors>

  It seems absurd to start the design from the end, but it is not. In fact,
  as previously mentioned, it is not a random choice because in the same way
  that an average user will have a simplified reading of the floors and the
  elevator status, even an engineer in the debugging phase can benefit from
  it. In fact, it is very easy to get the position of 1 bit wrong and read,
  for example, the floor <math|y<rsub|2>=0,y<rsub|1>=1,y<rsub|0>=0> (floor 2)
  instead of the floor <math|y<rsub|2>=1,y<rsub|1>=0,y<rsub|0>=0>
  (<with|font-shape|italic|VIP floor>). This also applies to the states of
  course.

  So let's start our design by implementing a 7-segment display for
  displaying the planes. To do this it is clear that we need to convert a
  binary input (i.e. <math|y<rsub|2>,y<rsub|1>,y<rsub|0>>) into a
  corresponding decimal number. So we can implement a simple decoder that by
  definition does just that. Of course we would like to implement the
  combinational circuit using a ROM (Read Only Memory) to make the design as
  clean as possible. Having understood this, it is necessary to know that a
  7-segment display is nothing more than a set of connected LED diodes that
  are turned on based on the decoded input value. In general a 7-segment
  display looks like this:

  <big-figure|<tabular|<tformat|<cwith|1|1|1|-1|cell-halign|c>|<cwith|1|1|1|-1|cell-valign|c>|<table|<row|<cell|<image|imgs/7-segmenti.png|0.3par|||>>|<cell|>|<cell|<image|imgs/led.png|0.07par|||>>>>>>|7-segment
  display<label|7-seg>>

  In particular, we will use the common cathode configuration which, as the
  name suggests, features LEDs that all share the same cathode connected to
  GND. As shown in Fig. <reference|7-seg>, each input of the 7-segment
  display will light one or more LEDs, consequently illuminating one or more
  lines. Therefore, to correctly represent each number, we can refer to the
  following image:

  <big-figure|<image|imgs/7-seg-num.png|0.4par|||>|Encoding numbers for a
  7-segment display>

  For example to write the number 1 we should set <math|b=1> and <math|c=1>.
  Then, as I said before, we should implement a decoder to make sure to
  activate <math|b,c> or any other input using the binary input
  <math|y<rsub|2>,y<rsub|1>,y<rsub|0>>. Therefore we can build the following
  truth table:

  <big-table|<tabular|<tformat|<table|<row|<cell|<math|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|1|4|1|1|cell-halign|c>|<cwith|1|4|1|1|cell-valign|c>|<cwith|1|-1|1|4|cell-background|pastel
  blue>|<cwith|1|-1|5|12|cell-background|pastel
  green>|<cwith|6|6|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|12|12|cell-rborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|12|12|cell-rborder|1ln>|<table|<row|<cell|Floor>|<cell|y<rsub|2>>|<cell|y<rsub|1>>|<cell|y<rsub|0>>|<cell|a>|<cell|b>|<cell|c>|<cell|d>|<cell|e>|<cell|f>|<cell|g>|<cell|HEX>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x7E>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|<shell|0x30>>>|<row|<cell|2>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|<shell|0x6D>>>|<row|<cell|3>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x79>>>|<row|<cell|PIV>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x33>>>>>>>>>>>|Decoder
  truth table for 7-segment display<label|truth-table-7-seg>>

  At this point we have everything we need to make the decoder, so since we
  would have 3 input bits and 7 output bits we should set the ROM with the
  following settings:

  <\big-figure|<image|imgs/settings-rom-7-seg.png|0.3par|||>>
    ROM settings for 7-segment display
  </big-figure>

  by inserting the HEX column in Table <reference|truth-table-7-seg> in the
  <shell|Data> field. Therefore the final circuit is the following:

  <big-figure|<image|imgs/dec-7-seg.png|0.5par|||>|Decoder for 7-segment
  display>

  Finally the \Pdp\Q input of the 7-segment display handles the dot, but
  since we don't need it, it has been connected directly to GND.

  <subsection|16-segment display for status>

  This design is similar to the previous one although there is an important
  factor to take into account: the number of bits! In fact since we have to
  implement 4 16-segment displays we would need <math|16\<cdot\>4=64> bits.
  However the Digital simulator can create ROMs for a maximum of 32 bits
  each. Therefore we will implement two ROMs. The first one for the
  management of the first 32 \Pless significant\Q bits and the second one for
  the management of the last 32 \Pmore significant\Q bits. But why do we need
  to use 4 16-segment displays? Wouldn't it be enough to use a 7-segment
  display again? Well, with a 7-segment display we would only display the
  numbers from 0 to 4 just like the planes. But in the case of the states we
  need to give some more information. In fact we can make the following
  association:

  <big-table|<tabular|<tformat|<cwith|1|1|1|1|cell-bborder|0ln>|<cwith|1|1|1|1|cell-lborder|0ln>|<cwith|1|1|1|1|cell-rborder|0ln>|<table|<row|<cell|<math|<tformat|<cwith|1|2|1|2|cell-halign|c>|<cwith|1|2|1|2|cell-valign|c>|<cwith|2|-1|1|-1|cell-halign|c>|<cwith|2|-1|1|-1|cell-valign|c>|<cwith|1|-1|1|1|cell-background|pastel
  blue>|<cwith|1|-1|1|-1|cell-tborder|0ln>|<cwith|1|-1|1|-1|cell-bborder|0ln>|<cwith|1|-1|1|-1|cell-lborder|0ln>|<cwith|1|-1|1|-1|cell-rborder|0ln>|<cwith|6|6|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|5|5|cell-rborder|1ln>|<cwith|1|1|1|-1|cell-halign|c>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|5|5|cell-rborder|1ln>|<cwith|1|-1|2|-1|cell-background|pastel
  green>|<table|<row|<cell|State>|<cell|D<rsub|1>>|<cell|D<rsub|2>>|<cell|D<rsub|3>>|<cell|D<rsub|4>>>|<row|<cell|Waiting>|<cell|W>|<cell|A>|<cell|I>|<cell|T>>|<row|<cell|Up
  Movement>|<cell|U>|<cell|P>|<cell|>|<cell|>>|<row|<cell|Down
  Movement>|<cell|D>|<cell|O>|<cell|W>|<cell|N>>|<row|<cell|Doors
  Opening>|<cell|O>|<cell|P>|<cell|E>|<cell|N>>|<row|<cell|Stop>|<cell|S>|<cell|T>|<cell|O>|<cell|P>>>>>>>>>>|Conversion
  of elevator states into characters that can be represented on the 4
  16-segment displays>

  Fortunately, <math|<frac|3|4>> of the states will use exactly all 4
  displays and only in the case of the UP state will 2 displays be used to
  represent the individual characters. Let's continue our discussion keeping
  in mind that in general a 16-segment display looks like this:

  <big-figure|<image|imgs/16-segmenti.png|0.12par|||>|16 segment display>

  so for the correct representations of the characters we can refer to the
  following image:

  <big-figure|<image|imgs/numbers.png|0.3par|||>|Character encodings for a
  16-segment display>

  We are ready to build the truth table for the first 2 displays i.e. for the
  first 32 \Pleast significant\Q bits:

  <big-table|<tabular|<tformat|<table|<row|<cell|<math|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|2|5|1|1|cell-halign|c>|<cwith|2|5|1|1|cell-valign|c>|<cwith|1|-1|1|4|cell-background|pastel
  blue>|<cwith|1|-1|5|22|cell-background|pastel
  green>|<cwith|7|7|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|22|22|cell-rborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|2|2|1|-1|cell-bborder|1ln>|<cwith|3|3|1|-1|cell-tborder|1ln>|<cwith|2|2|1|1|cell-lborder|1ln>|<cwith|2|2|22|22|cell-rborder|1ln>|<cwith|1|1|1|1|cell-row-span|1>|<cwith|1|1|1|1|cell-col-span|22>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-rborder|1ln>|<cwith|1|1|1|-1|cell-lborder|1ln>|<cwith|8|14|1|22|cell-halign|c>|<cwith|8|14|1|22|cell-valign|c>|<cwith|9|12|1|1|cell-halign|c>|<cwith|9|12|1|1|cell-valign|c>|<cwith|8|14|1|4|cell-background|pastel
  blue>|<cwith|8|14|5|22|cell-background|pastel
  green>|<cwith|14|14|1|22|cell-bborder|1ln>|<cwith|8|14|1|1|cell-lborder|1ln>|<cwith|8|14|22|22|cell-rborder|1ln>|<cwith|9|9|1|22|cell-tborder|1ln>|<cwith|9|9|1|22|cell-bborder|1ln>|<cwith|10|10|1|22|cell-tborder|1ln>|<cwith|9|9|1|1|cell-lborder|1ln>|<cwith|9|9|22|22|cell-rborder|1ln>|<cwith|8|8|1|1|cell-row-span|1>|<cwith|8|8|1|1|cell-col-span|22>|<cwith|8|8|1|22|cell-tborder|1ln>|<cwith|8|8|1|22|cell-bborder|1ln>|<cwith|9|9|1|1|cell-tborder|1ln>|<cwith|8|8|1|22|cell-rborder|1ln>|<cwith|8|8|1|22|cell-lborder|1ln>|<cwith|1|1|1|1|cell-background|pastel
  grey>|<cwith|8|8|1|1|cell-background|pastel
  grey>|<cwith|6|6|5|8|cell-halign|c>|<cwith|6|6|5|8|cell-valign|c>|<cwith|6|6|5|8|cell-background|pastel
  green>|<cwith|6|6|9|12|cell-halign|c>|<cwith|6|6|9|12|cell-valign|c>|<cwith|6|6|9|12|cell-background|pastel
  green>|<cwith|6|6|13|16|cell-halign|c>|<cwith|6|6|13|16|cell-valign|c>|<cwith|6|6|13|16|cell-background|pastel
  green>|<cwith|6|6|17|20|cell-halign|c>|<cwith|6|6|17|20|cell-valign|c>|<cwith|6|6|17|20|cell-background|pastel
  green>|<cwith|13|13|5|20|cell-halign|c>|<cwith|13|13|5|20|cell-valign|c>|<cwith|13|13|5|20|cell-background|pastel
  green>|<cwith|13|13|5|20|cell-halign|c>|<cwith|13|13|5|20|cell-valign|c>|<cwith|13|13|5|20|cell-background|pastel
  green>|<cwith|12|12|5|20|cell-halign|c>|<cwith|12|12|5|20|cell-valign|c>|<cwith|12|12|5|20|cell-background|pastel
  green>|<cwith|12|12|5|8|cell-halign|c>|<cwith|12|12|5|8|cell-valign|c>|<cwith|12|12|5|8|cell-background|pastel
  green>|<cwith|12|12|9|12|cell-halign|c>|<cwith|12|12|9|12|cell-valign|c>|<cwith|12|12|9|12|cell-background|pastel
  green>|<cwith|12|12|13|16|cell-halign|c>|<cwith|12|12|13|16|cell-valign|c>|<cwith|12|12|13|16|cell-background|pastel
  green>|<cwith|12|12|17|20|cell-halign|c>|<cwith|12|12|17|20|cell-valign|c>|<cwith|12|12|17|20|cell-background|pastel
  green>|<table|<row|<cell|Display D<rsub|1>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|State>|<cell|z<rsub|2>>|<cell|z<rsub|1>>|<cell|z<rsub|0>>|<cell|a<rsub|1>>|<cell|a<rsub|2>>|<cell|b>|<cell|c>|<cell|d<rsub|2>>|<cell|d<rsub|1>>|<cell|e>|<cell|f>|<cell|g<rsub|1>>|<cell|g<rsub|2>>|<cell|h>|<cell|i>|<cell|j>|<cell|m>|<cell|l>|<cell|k>|<cell|Character>|<cell|HEX>>|<row|<cell|WAIT>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|W>|<cell|<shell|0xA8CC>>>|<row|<cell|UP>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|U>|<cell|<shell|0x00FC>>>|<row|<cell|DOWN>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|D>|<cell|<shell|0x483F>>>|<row|<cell|OPEN>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|O>|<cell|<shell|0x00FF>>>|<row|<cell|STOP>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|S>|<cell|<shell|0x063B>>>|<row|<cell|Display
  D<rsub|2>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|State>|<cell|z<rsub|2>>|<cell|z<rsub|1>>|<cell|z<rsub|0>>|<cell|a<rsub|1>>|<cell|a<rsub|2>>|<cell|b>|<cell|c>|<cell|d<rsub|2>>|<cell|d<rsub|1>>|<cell|e>|<cell|f>|<cell|g<rsub|1>>|<cell|g<rsub|2>>|<cell|h>|<cell|i>|<cell|j>|<cell|m>|<cell|l>|<cell|k>|<cell|Character>|<cell|HEX>>|<row|<cell|WAIT>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|A>|<cell|<shell|0x03CF>>>|<row|<cell|UP>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|P>|<cell|<shell|0x03C7>>>|<row|<cell|DOWN>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|O>|<cell|<shell|0x00FF>>>|<row|<cell|OPEN>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|P>|<cell|<shell|0x03C7>>>|<row|<cell|STOP>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|T>|<cell|<shell|0x4803>>>>>>>>>>>|Decoder
  truth table for the 16-segment <math|D<rsub|1>> and <math|D<rsub|2>>
  displays<label|d1-d2>>

  Note that in the conversion from binary to hexadecimal I considered the
  inverted sequence, i.e. <math|k,l,m,\<ldots\>> so that the bit in position
  0 is <math|a<rsub|1>> while the bit in position 15 is <math|k> (always
  considering groups of 4 bits in the conversion from binary to hexadecimal).
  This is because in the Digital simulator, when using the 16-segment
  display, the bit in position 0 is precisely <math|a<rsub|1>>, therefore it
  is necessary to appropriately encode the values in hexadecimal to be
  inserted into the ROM. Let's continue with the remaining 2 displays, i.e.
  for the second 32 "most significant" bits:

  <big-table|<tabular|<tformat|<table|<row|<cell|<math|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|2|5|1|1|cell-halign|c>|<cwith|2|5|1|1|cell-valign|c>|<cwith|1|-1|1|4|cell-background|pastel
  blue>|<cwith|1|-1|5|22|cell-background|pastel
  green>|<cwith|7|7|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|22|22|cell-rborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|2|2|1|-1|cell-bborder|1ln>|<cwith|3|3|1|-1|cell-tborder|1ln>|<cwith|2|2|1|1|cell-lborder|1ln>|<cwith|2|2|22|22|cell-rborder|1ln>|<cwith|1|1|1|1|cell-row-span|1>|<cwith|1|1|1|1|cell-col-span|22>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-rborder|1ln>|<cwith|1|1|1|-1|cell-lborder|1ln>|<cwith|8|14|1|22|cell-halign|c>|<cwith|8|14|1|22|cell-valign|c>|<cwith|9|12|1|1|cell-halign|c>|<cwith|9|12|1|1|cell-valign|c>|<cwith|8|14|1|4|cell-background|pastel
  blue>|<cwith|8|14|5|22|cell-background|pastel
  green>|<cwith|14|14|1|22|cell-bborder|1ln>|<cwith|8|14|1|1|cell-lborder|1ln>|<cwith|8|14|22|22|cell-rborder|1ln>|<cwith|9|9|1|22|cell-tborder|1ln>|<cwith|9|9|1|22|cell-bborder|1ln>|<cwith|10|10|1|22|cell-tborder|1ln>|<cwith|9|9|1|1|cell-lborder|1ln>|<cwith|9|9|22|22|cell-rborder|1ln>|<cwith|8|8|1|1|cell-row-span|1>|<cwith|8|8|1|1|cell-col-span|22>|<cwith|8|8|1|22|cell-tborder|1ln>|<cwith|8|8|1|22|cell-bborder|1ln>|<cwith|9|9|1|1|cell-tborder|1ln>|<cwith|8|8|1|22|cell-rborder|1ln>|<cwith|8|8|1|22|cell-lborder|1ln>|<cwith|1|1|1|1|cell-background|pastel
  grey>|<cwith|8|8|1|1|cell-background|pastel
  grey>|<cwith|11|11|5|20|cell-halign|c>|<cwith|11|11|5|20|cell-valign|c>|<cwith|11|11|5|20|cell-background|pastel
  green>|<cwith|5|5|5|20|cell-halign|c>|<cwith|5|5|5|20|cell-valign|c>|<cwith|5|5|5|20|cell-background|pastel
  green>|<cwith|5|5|5|20|cell-tborder|0ln>|<cwith|4|4|5|20|cell-bborder|0ln>|<cwith|5|5|5|20|cell-bborder|0ln>|<cwith|6|6|5|20|cell-tborder|0ln>|<cwith|5|5|5|5|cell-lborder|0ln>|<cwith|5|5|4|4|cell-rborder|0ln>|<cwith|5|5|20|20|cell-rborder|0ln>|<cwith|5|5|21|21|cell-lborder|0ln>|<cwith|7|7|5|20|cell-halign|c>|<cwith|7|7|5|20|cell-valign|c>|<cwith|7|7|5|20|cell-background|pastel
  green>|<cwith|7|7|5|20|cell-halign|c>|<cwith|7|7|5|20|cell-valign|c>|<cwith|7|7|5|20|cell-background|pastel
  green>|<cwith|7|7|5|20|cell-halign|c>|<cwith|7|7|5|20|cell-valign|c>|<cwith|7|7|5|20|cell-background|pastel
  green>|<cwith|7|7|5|8|cell-halign|c>|<cwith|7|7|5|8|cell-valign|c>|<cwith|7|7|5|8|cell-background|pastel
  green>|<cwith|7|7|9|12|cell-halign|c>|<cwith|7|7|9|12|cell-valign|c>|<cwith|7|7|9|12|cell-background|pastel
  green>|<cwith|7|7|13|16|cell-halign|c>|<cwith|7|7|13|16|cell-valign|c>|<cwith|7|7|13|16|cell-background|pastel
  green>|<cwith|7|7|17|20|cell-halign|c>|<cwith|7|7|17|20|cell-valign|c>|<cwith|7|7|17|20|cell-background|pastel
  green>|<cwith|10|10|5|20|cell-halign|c>|<cwith|10|10|5|20|cell-valign|c>|<cwith|10|10|5|20|cell-background|pastel
  green>|<cwith|10|10|5|20|cell-halign|c>|<cwith|10|10|5|20|cell-valign|c>|<cwith|10|10|5|20|cell-background|pastel
  green>|<cwith|10|10|5|20|cell-tborder|1ln>|<cwith|9|9|5|20|cell-bborder|1ln>|<cwith|10|10|5|20|cell-bborder|0ln>|<cwith|11|11|5|20|cell-tborder|0ln>|<cwith|10|10|5|5|cell-lborder|0ln>|<cwith|10|10|4|4|cell-rborder|0ln>|<cwith|10|10|20|20|cell-rborder|0ln>|<cwith|10|10|21|21|cell-lborder|0ln>|<cwith|14|14|5|20|cell-halign|c>|<cwith|14|14|5|20|cell-valign|c>|<cwith|14|14|5|20|cell-background|pastel
  green>|<cwith|14|14|5|20|cell-halign|c>|<cwith|14|14|5|20|cell-valign|c>|<cwith|14|14|5|20|cell-background|pastel
  green>|<cwith|14|14|5|20|cell-halign|c>|<cwith|14|14|5|20|cell-valign|c>|<cwith|14|14|5|20|cell-background|pastel
  green>|<cwith|14|14|5|20|cell-halign|c>|<cwith|14|14|5|20|cell-valign|c>|<cwith|14|14|5|20|cell-background|pastel
  green>|<cwith|13|13|5|20|cell-halign|c>|<cwith|13|13|5|20|cell-valign|c>|<cwith|13|13|5|20|cell-background|pastel
  green>|<cwith|13|13|5|20|cell-halign|c>|<cwith|13|13|5|20|cell-valign|c>|<cwith|13|13|5|20|cell-background|pastel
  green>|<table|<row|<cell|Display D<rsub|3>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|State>|<cell|z<rsub|2>>|<cell|z<rsub|1>>|<cell|z<rsub|0>>|<cell|a<rsub|1>>|<cell|a<rsub|2>>|<cell|b>|<cell|c>|<cell|d<rsub|2>>|<cell|d<rsub|1>>|<cell|e>|<cell|f>|<cell|g<rsub|1>>|<cell|g<rsub|2>>|<cell|h>|<cell|i>|<cell|j>|<cell|m>|<cell|l>|<cell|k>|<cell|Character>|<cell|HEX>>|<row|<cell|WAIT>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|I>|<cell|<shell|0x4833>>>|<row|<cell|UP>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|>|<cell|<shell|0x0000>>>|<row|<cell|DOWN>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|W>|<cell|<shell|0xA8CC>>>|<row|<cell|OPEN>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|E>|<cell|<shell|0x03F3>>>|<row|<cell|STOP>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|O>|<cell|<shell|0x00FF>>>|<row|<cell|Display
  D<rsub|4>>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>|<cell|>>|<row|<cell|State>|<cell|z<rsub|2>>|<cell|z<rsub|1>>|<cell|z<rsub|0>>|<cell|a<rsub|1>>|<cell|a<rsub|2>>|<cell|b>|<cell|c>|<cell|d<rsub|2>>|<cell|d<rsub|1>>|<cell|e>|<cell|f>|<cell|g<rsub|1>>|<cell|g<rsub|2>>|<cell|h>|<cell|i>|<cell|j>|<cell|m>|<cell|l>|<cell|k>|<cell|Character>|<cell|HEX>>|<row|<cell|WAIT>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|T>|<cell|<shell|0x4803>>>|<row|<cell|UP>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|>|<cell|<shell|0x0000>>>|<row|<cell|DOWN>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|N>|<cell|<shell|0x24CC>>>|<row|<cell|OPEN>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|N>|<cell|<shell|0x24CC>>>|<row|<cell|STOP>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|P>|<cell|<shell|0x03C7>>>>>>>>>>>|Decoder
  truth table for the 16-segment <math|D<rsub|3>> and <math|D<rsub|4>>
  displays<label|d3-d4>>

  At this point we have everything we need to make the decoder, so since we
  would have 3 bits of input and 32 bits of output we should set the two ROMs
  with the following settings:

  <\big-figure|<image|imgs/settings-rom-16-seg.png|0.3par|||>>
    Impostazioni ROM per il display a 16 segmenti
  </big-figure>

  by inserting in the <shell|Data> field the HEX column present in both Table
  <reference|d1-d2> and Table <reference|d3-d4> as follows:

  <big-figure|<tabular|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<table|<row|<cell|<image|imgs/data-16-seg-d1-d2.png|0.12par|||>>|<cell|>|<cell|<image|imgs/data-16-seg-d3-d4.png|0.12par|||>>>|<row|<cell|<math|D<rsub|1>>
  and <math|D<rsub|2>> ROM>|<cell|>|<cell|<math|D<rsub|3>> and
  <math|D<rsub|4>> ROM>>>>>|<shell|Data> field of the ROMs>

  as you can see the hexadecimal values have been arranged in such a way that
  for display <math|D<rsub|1>> we complete the first 16 bits of the first ROM
  and for display <math|D<rsub|2>> we complete the last 16 bits of the first
  ROM for a total of 32 bits. The same is true for displays <math|D<rsub|3>>
  and <math|D<rsub|4>> but for the second ROM. Therefore the final circuit is
  the following:

  <big-figure|<image|imgs/dec-16-seg.png|0.7par|||>|Decoder for 16-segment
  display>

  Finally the \Pdp\Q input of the 16-segment display handles the dot, but
  since we don't need it, it has been connected directly to GND.

  <subsection|Buffering pending requests>

  Let's get into the heart of the design and in particular we use SR
  flip-flops to buffer the <math|P<rsub|x>> calls. An SR flip-flop is a
  circuit that behaves as follows: when the input <math|SET=1> and the input
  <math|RESET=0> it follows that the output <math|Q=1>, while when the input
  <math|SET=0> and the input <math|RESET=1> it follows that the output
  <math|Q=0>. Finally, the case <math|SET=1> and <math|RESET=1>, at the same
  time, is not admissible. This type of flip-flop is perfect in our case
  because when a generic <math|P<rsub|x>> call arrives, it transforms into an
  <math|R<rsub|x>> request (so <math|Q=R<rsub|x>>) that remains waiting
  before being served (i.e. it remains waiting until <math|RESET=0>).
  Therefore we would have all the calls <math|P<rsub|0>,\<ldots\>,P<rsub|3>,P<rsub|VIP>>
  connected to 5 SR flip-flops respectively to the <math|SET> inputs, so
  that, when a generic call arrives, the relative waiting request is
  activated.

  <big-figure|<image|imgs/pending-requests.png|0.25par|||>|Buffering pending
  requests>

  <subsection|Reset Management>

  But who do we connect to the <math|RESET> inputs? We might think of
  connecting the arrivals <math|A<rsub|0>,\<ldots\>,A<rsub|3>,A<rsub|VIP>>,
  but this is not good because the arrivals behave like sensors for detecting
  the passage through a generic floor but are not indicators of whether a
  generic request <math|R<rsub|x>>, and therefore a generic call
  <math|P<rsub|x>>, has been served or not. So we need to implement a
  circuitry that tells us if the request has been served correctly so that we
  can proceed with the actual reset of the SR flip-flops involved. But when
  do we have to reset the SR flip-flops? Or rather, when is a request served?
  Well, a request is served if we have arrived at a floor <math|x> and if 9
  seconds have passed in the door open state. Therefore it is clear that the
  bits <math|y<rsub|2>,y<rsub|1>,y<rsub|0>>, which represent a generic floor,
  must be ANDed (with appropriate negated inputs) between them and we must
  also add a <math|TIMEOUT> signal which represents the overflow bit when 9
  seconds are counted. In particular, using a Timer and setting a number of
  bits equal to 4 and as a maximum counting value
  <math|(8)<rsub|10>=(1000)<rsub|2>> when we move to
  <math|(9)<rsub|10>=(1001)<rsub|2>> we have one bit left to generate the
  overflow which will be assigned to the <math|TIMEOUT> signal, but we will
  discuss this better later when the finite state automaton for managing the
  elevator states is created.

  <big-figure|<image|imgs/reset-management.png|1par|||>|Reset Management>

  <subsection|Detector for a generic floor>

  In general we know that the arrival signals
  <math|A<rsub|0>,\<ldots\>,A<rsub|3>,A<rsub|VIP>> differ from the calls
  <math|P<rsub|0>,\<ldots\>,P<rsub|3>,P<rsub|VIP>> because they are unique.
  In fact, there cannot be two arrival signals active at the same time.
  Therefore we can build a detector that activates only when passing through
  a generic floor and to do so it is sufficient to OR all the arrival signals
  <math|A<rsub|0>,\<ldots\>,A<rsub|3>,A<rsub|VIP>> precisely because of their
  definition of uniqueness.

  <big-figure|<image|imgs/floor-detector.png|0.25par|||>|Detector for a
  generic floor<label|floor-detector>>

  <subsection|Signal for arrival at destination>

  Another useful signal to implement is <math|DESTINATION>, a signal that is
  1 when the elevator arrives at its destination, otherwise it is 0. To
  implement it we should satisfy a generic <math|R<rsub|x>> request in
  conjunction with a generic arrival signal <math|A<rsub|x>>. This translates
  into 5 AND gates plus the addition of an OR gate (it is basically a
  Multiplexer, but by individually implementing the 6 total gates we save
  inputs that would not be used, in fact 5 is not a power of 2). In fact,
  precisely because of the uniqueness of the <math|A<rsub|x>> signals, only
  one of the AND gates will be activated in rotation. Naturally, arriving at
  the destination does not imply that an <math|R<rsub|x>> request has been
  served.

  <big-figure|<image|imgs/destination-arrival-signal.png|0.35par|||>|Signal
  for arrival at destination>

  <subsection|Request Management>

  At this point we need to find a way to \Pknow\Q if the elevator should go
  up, down or stay still. Therefore we certainly know that there will have to
  be 3 signals, namely <math|UP, STOP> and <math|DOWN>, which, based on a
  generic request <math|R<rsub|x>> and knowing which floor the elevator has
  arrived at, will be activated appropriately. But how do we know which floor
  the elevator has arrived at? Well, simply by using the arrival signals
  <math|A<rsub|0>,\<ldots\>,A<rsub|3>,A<rsub|VIP>> (be careful not to confuse
  this logic with the logic of the <math|DESTINATION> signal). But how?
  Considering, for example, the <math|UP> signal we know that the elevator
  must go up only if <math|\<exists\>A<rsub|x>\<gtr\>x\<wedge\>R<rsub|x>=1>
  (the symbol <math|\<wedge\>> represents the logical AND), that is, only if
  I receive a request <math|R<rsub|x>> and the elevator arrives at a floor
  <math|x> with a signal <math|A<rsub|x>\<gtr\>x>. For example, if <math|x=0>
  (floor 0) and I receive a request <math|R<rsub|1>=1> to know if the
  elevator has arrived at floor 1, we would have <math|A<rsub|1>=1> and
  therefore <math|A<rsub|1>\<gtr\>x>. So:

  <\eqnarray>
    <tformat|<table|<row|<cell|UP=1>|<cell|\<Longleftrightarrow\>>|<cell|\<exists\>A<rsub|x>\<gtr\>x\<wedge\>R<rsub|x>=1>>|<row|<cell|STOP=1>|<cell|\<Longleftrightarrow\>>|<cell|\<exists\>A<rsub|x>=x\<wedge\>R<rsub|x>=1>>|<row|<cell|DOWN=1>|<cell|\<Longleftrightarrow\>>|<cell|\<exists\>A<rsub|x>\<less\>x\<wedge\>R<rsub|x>=1>>>>
  </eqnarray>

  Therefore, the only iterative logic network that allows us to perform the
  comparisons <math|A<rsub|x>\<gtr\>x,A<rsub|x>=x,A<rsub|x>\<less\>x> is the
  comparator that will have the <math|UP,STOP,DOWN> signals as outputs. This
  comparator will have to manage all the possible <math|R<rsub|x>> requests
  based on the arrival floors <math|A<rsub|x>> for a total of
  <math|2<rsup|5>\<cdot\>5=160> cases (in fact we have 4 floors plus the
  ground floor). Furthermore, the arrival signals <math|A<rsub|x>> will have
  to be buffered, based on the detection of a generic floor, to know which
  signal to activate between <math|UP,STOP,DOWN> based on the arrival of a
  new <math|R<rsub|x>> request. And here is where the circuit in Fig.
  <reference|floor-detector> comes to our aid. In particular, using a D
  flip-flop with a <math|CK<rsub|2>> <with|font-shape|italic|clock> signal,
  we can make the D input pass to the <math|Q> output (i.e. <math|Q=D>) only
  when a new floor is detected. Furthermore, to make our life easier, we can
  encode the <math|A<rsub|x>> signals by going from 5 bits to 3 bits. This
  last choice is very useful for the construction of the comparator truth
  tables to ensure that there are 8 bits in input (i.e. the 5 requests
  <math|R<rsub|x>> plus 3 bits of the coding of the arrival signals
  <math|A<rsub|x>>) and 3 bits in output (i.e. <math|UP, STOP, DOWN>).

  Let's start by realizing the encoder of the arrival signals
  <math|A<rsub|x>>, which will have the following truth table:

  <big-table|<tabular|<tformat|<table|<row|<cell|<math|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|1|-1|6|8|cell-background|pastel
  green>|<cwith|1|-1|1|5|cell-background|pastel
  blue>|<cwith|1|-1|1|-1|cell-tborder|0ln>|<cwith|1|-1|1|-1|cell-bborder|0ln>|<cwith|1|-1|1|-1|cell-lborder|0ln>|<cwith|1|-1|1|-1|cell-rborder|0ln>|<cwith|1|-1|9|9|cell-background|pastel
  green>|<cwith|7|7|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|9|9|cell-rborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|9|9|cell-rborder|1ln>|<table|<row|<cell|A<rsub|VIP>>|<cell|A<rsub|3>>|<cell|A<rsub|2>>|<cell|A<rsub|1>>|<cell|A<rsub|0>>|<cell|a<rsub|2>>|<cell|a<rsub|1>>|<cell|a<rsub|0>>|<cell|HEX>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|<shell|0x0>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|<shell|0x0>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|<shell|0x2>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x3>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|<shell|0x4>>>>>>>>>>>|Encoder
  truth table for arrival signals<label|truth-table-encoder>>

  To implement the encoder, a ROM (Read Only Memory) will be used, therefore
  the following settings must be set:

  <big-figure|<image|imgs/cod-Ax.png|0.3par|||>|ROM settings for the encoder>

  by inserting the HEX column in Table <reference|truth-table-encoder> in the
  <shell|Data> field. Subsequently, all the output bits will be stored in a D
  flip-flop, with <with|font-shape|italic|clock> signal <math|CK<rsub|2>>,
  with the following settings:

  <big-figure|<image|imgs/settings-flip-flop-D.png|0.2par|||>|D Flip-Flop
  Settings>

  and the <math|Q> output, having 3 bits, will be used as the comparator
  input together with the <math|R<rsub|x>> requests. At the end of this part
  the circuit is the following:

  <big-figure|<image|imgs/incomplete-requests-management.png|0.5par|||>|Incomplete
  request management>

  Now we report the relationships that link the output signals <math|UP,
  STOP, DOWN>, with the relative inputs in 5 truth tables each composed of 32
  bits. The first truth table represents the 32 possible requests
  <math|R<rsub|x>> in the case in which <math|a<rsub|2>=0, a<rsub|1>=0,
  a<rsub|0>=0> (so we are in the case in which no arrival signal is
  activated, or the arrival signal <math|A<rsub|0>> is activated):

  <big-table|<tiny|<tabular|<tformat|<table|<row|<cell|<math|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|19|33|5|8|cell-halign|c>|<cwith|19|33|5|8|cell-valign|c>|<cwith|19|26|4|4|cell-halign|c>|<cwith|19|26|4|4|cell-valign|c>|<cwith|19|26|4|4|cell-halign|c>|<cwith|19|26|4|4|cell-valign|c>|<cwith|27|34|4|4|cell-halign|c>|<cwith|27|34|4|4|cell-valign|c>|<cwith|27|34|4|4|cell-halign|c>|<cwith|27|34|4|4|cell-valign|c>|<cwith|2|2|1|3|cell-halign|c>|<cwith|2|2|1|3|cell-valign|c>|<cwith|3|3|1|3|cell-halign|c>|<cwith|3|3|1|3|cell-valign|c>|<cwith|4|4|1|3|cell-halign|c>|<cwith|4|4|1|3|cell-valign|c>|<cwith|5|5|1|3|cell-halign|c>|<cwith|5|5|1|3|cell-valign|c>|<cwith|6|6|1|3|cell-halign|c>|<cwith|6|6|1|3|cell-valign|c>|<cwith|7|7|1|3|cell-halign|c>|<cwith|7|7|1|3|cell-valign|c>|<cwith|8|8|1|3|cell-halign|c>|<cwith|8|8|1|3|cell-valign|c>|<cwith|9|15|1|3|cell-halign|c>|<cwith|9|15|1|3|cell-valign|c>|<cwith|9|9|1|3|cell-halign|c>|<cwith|9|9|1|3|cell-valign|c>|<cwith|10|10|1|3|cell-halign|c>|<cwith|10|10|1|3|cell-valign|c>|<cwith|11|11|1|3|cell-halign|c>|<cwith|11|11|1|3|cell-valign|c>|<cwith|12|12|1|3|cell-halign|c>|<cwith|12|12|1|3|cell-valign|c>|<cwith|13|13|1|3|cell-halign|c>|<cwith|13|13|1|3|cell-valign|c>|<cwith|14|14|1|3|cell-halign|c>|<cwith|14|14|1|3|cell-valign|c>|<cwith|15|15|1|3|cell-halign|c>|<cwith|15|15|1|3|cell-valign|c>|<cwith|16|22|1|3|cell-halign|c>|<cwith|16|22|1|3|cell-valign|c>|<cwith|16|16|1|3|cell-halign|c>|<cwith|16|16|1|3|cell-valign|c>|<cwith|17|17|1|3|cell-halign|c>|<cwith|17|17|1|3|cell-valign|c>|<cwith|18|18|1|3|cell-halign|c>|<cwith|18|18|1|3|cell-valign|c>|<cwith|19|19|1|3|cell-halign|c>|<cwith|19|19|1|3|cell-valign|c>|<cwith|20|20|1|3|cell-halign|c>|<cwith|20|20|1|3|cell-valign|c>|<cwith|21|21|1|3|cell-halign|c>|<cwith|21|21|1|3|cell-valign|c>|<cwith|22|22|1|3|cell-halign|c>|<cwith|22|22|1|3|cell-valign|c>|<cwith|23|29|1|3|cell-halign|c>|<cwith|23|29|1|3|cell-valign|c>|<cwith|23|23|1|3|cell-halign|c>|<cwith|23|23|1|3|cell-valign|c>|<cwith|24|24|1|3|cell-halign|c>|<cwith|24|24|1|3|cell-valign|c>|<cwith|25|25|1|3|cell-halign|c>|<cwith|25|25|1|3|cell-valign|c>|<cwith|26|26|1|3|cell-halign|c>|<cwith|26|26|1|3|cell-valign|c>|<cwith|27|27|1|3|cell-halign|c>|<cwith|27|27|1|3|cell-valign|c>|<cwith|28|28|1|3|cell-halign|c>|<cwith|28|28|1|3|cell-valign|c>|<cwith|29|29|1|3|cell-halign|c>|<cwith|29|29|1|3|cell-valign|c>|<cwith|30|32|1|3|cell-halign|c>|<cwith|30|32|1|3|cell-valign|c>|<cwith|30|32|1|3|cell-halign|c>|<cwith|30|32|1|3|cell-valign|c>|<cwith|30|30|1|3|cell-halign|c>|<cwith|30|30|1|3|cell-valign|c>|<cwith|31|31|1|3|cell-halign|c>|<cwith|31|31|1|3|cell-valign|c>|<cwith|32|32|1|3|cell-halign|c>|<cwith|32|32|1|3|cell-valign|c>|<cwith|33|33|1|3|cell-halign|c>|<cwith|33|33|1|3|cell-valign|c>|<cwith|33|33|1|3|cell-halign|c>|<cwith|33|33|1|3|cell-valign|c>|<cwith|33|33|1|3|cell-halign|c>|<cwith|33|33|1|3|cell-valign|c>|<cwith|33|33|1|3|cell-halign|c>|<cwith|33|33|1|3|cell-valign|c>|<cwith|18|33|12|12|cell-halign|c>|<cwith|18|33|12|12|cell-valign|c>|<cwith|4|4|9|11|cell-halign|c>|<cwith|4|4|9|11|cell-valign|c>|<cwith|5|5|9|11|cell-halign|c>|<cwith|5|5|9|11|cell-valign|c>|<cwith|6|6|9|11|cell-halign|c>|<cwith|6|6|9|11|cell-valign|c>|<cwith|7|7|9|11|cell-halign|c>|<cwith|7|7|9|11|cell-valign|c>|<cwith|8|8|9|11|cell-halign|c>|<cwith|8|8|9|11|cell-valign|c>|<cwith|9|9|9|11|cell-halign|c>|<cwith|9|9|9|11|cell-valign|c>|<cwith|10|10|9|11|cell-halign|c>|<cwith|10|10|9|11|cell-valign|c>|<cwith|11|11|9|11|cell-halign|c>|<cwith|11|11|9|11|cell-valign|c>|<cwith|12|12|9|11|cell-halign|c>|<cwith|12|12|9|11|cell-valign|c>|<cwith|13|13|9|11|cell-halign|c>|<cwith|13|13|9|11|cell-valign|c>|<cwith|14|14|9|11|cell-halign|c>|<cwith|14|14|9|11|cell-valign|c>|<cwith|15|15|9|11|cell-halign|c>|<cwith|15|15|9|11|cell-valign|c>|<cwith|16|16|9|11|cell-halign|c>|<cwith|16|16|9|11|cell-valign|c>|<cwith|17|17|9|11|cell-halign|c>|<cwith|17|17|9|11|cell-valign|c>|<cwith|18|18|9|11|cell-halign|c>|<cwith|18|18|9|11|cell-valign|c>|<cwith|3|5|12|12|cell-halign|c>|<cwith|3|5|12|12|cell-valign|c>|<cwith|6|8|12|12|cell-halign|c>|<cwith|6|8|12|12|cell-valign|c>|<cwith|9|11|12|12|cell-halign|c>|<cwith|9|11|12|12|cell-valign|c>|<cwith|12|14|12|12|cell-halign|c>|<cwith|12|14|12|12|cell-valign|c>|<cwith|20|20|9|12|cell-halign|c>|<cwith|20|20|9|12|cell-valign|c>|<cwith|20|20|12|12|cell-halign|c>|<cwith|20|20|12|12|cell-valign|c>|<cwith|21|21|9|12|cell-halign|c>|<cwith|21|21|9|12|cell-valign|c>|<cwith|21|21|12|12|cell-halign|c>|<cwith|21|21|12|12|cell-valign|c>|<cwith|22|22|9|12|cell-halign|c>|<cwith|22|22|9|12|cell-valign|c>|<cwith|22|22|12|12|cell-halign|c>|<cwith|22|22|12|12|cell-valign|c>|<cwith|23|23|9|12|cell-halign|c>|<cwith|23|23|9|12|cell-valign|c>|<cwith|23|23|12|12|cell-halign|c>|<cwith|23|23|12|12|cell-valign|c>|<cwith|24|24|9|12|cell-halign|c>|<cwith|24|24|9|12|cell-valign|c>|<cwith|24|24|12|12|cell-halign|c>|<cwith|24|24|12|12|cell-valign|c>|<cwith|25|25|9|12|cell-halign|c>|<cwith|25|25|9|12|cell-valign|c>|<cwith|25|25|12|12|cell-halign|c>|<cwith|25|25|12|12|cell-valign|c>|<cwith|26|26|9|12|cell-halign|c>|<cwith|26|26|9|12|cell-valign|c>|<cwith|26|26|12|12|cell-halign|c>|<cwith|26|26|12|12|cell-valign|c>|<cwith|27|27|9|12|cell-halign|c>|<cwith|27|27|9|12|cell-valign|c>|<cwith|27|27|12|12|cell-halign|c>|<cwith|27|27|12|12|cell-valign|c>|<cwith|28|28|9|12|cell-halign|c>|<cwith|28|28|9|12|cell-valign|c>|<cwith|28|28|12|12|cell-halign|c>|<cwith|28|28|12|12|cell-valign|c>|<cwith|29|29|9|12|cell-halign|c>|<cwith|29|29|9|12|cell-valign|c>|<cwith|29|29|12|12|cell-halign|c>|<cwith|29|29|12|12|cell-valign|c>|<cwith|30|30|9|12|cell-halign|c>|<cwith|30|30|9|12|cell-valign|c>|<cwith|30|30|12|12|cell-halign|c>|<cwith|30|30|12|12|cell-valign|c>|<cwith|31|31|9|12|cell-halign|c>|<cwith|31|31|9|12|cell-valign|c>|<cwith|31|31|12|12|cell-halign|c>|<cwith|31|31|12|12|cell-valign|c>|<cwith|32|32|9|12|cell-halign|c>|<cwith|32|32|9|12|cell-valign|c>|<cwith|32|32|12|12|cell-halign|c>|<cwith|32|32|12|12|cell-valign|c>|<cwith|33|33|9|12|cell-halign|c>|<cwith|33|33|9|12|cell-valign|c>|<cwith|33|33|12|12|cell-halign|c>|<cwith|33|33|12|12|cell-valign|c>|<cwith|1|-1|9|12|cell-background|pastel
  green>|<cwith|1|-1|1|8|cell-background|pastel
  blue>|<cwith|33|33|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|12|12|cell-rborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|12|12|cell-rborder|1ln>|<table|<row|<cell|a<rsub|2>>|<cell|a<rsub|1>>|<cell|a<rsub|0>>|<cell|R<rsub|0>>|<cell|R<rsub|1>>|<cell|R<rsub|2>>|<cell|R<rsub|3>>|<cell|R<rsub|VIP>>|<cell|UP>|<cell|STOP>|<cell|DOWN>|<cell|HEX>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|<shell|0x0>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|<shell|0x4>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|<shell|0x4>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|<shell|0x4>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|<shell|0x4>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|<shell|0x4>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|<shell|0x4>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<shell|0x4>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|<shell|0x4>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|<shell|0x4>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|<shell|0x4>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<shell|0x4>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|<shell|0x4>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|<shell|0x4>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|<shell|0x4>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|<shell|0x4>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|<shell|0x2>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x6>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x6>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x6>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x6>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x6>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x6>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x6>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x6>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x6>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x6>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x6>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x6>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x6>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x6>>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x6>>>>>>>>>>>>|Comparator
  truth table for <math|a<rsub|2>=0,a<rsub|1>=0,a<rsub|0>=0>>

  The second truth table represents the 32 possible <math|R<rsub|x>> requests
  in the case where <math|a<rsub|2>=0,a<rsub|1>=0,a<rsub|0>=1> (so we are in
  the case where the arrival signal <math|A<rsub|1>> is activated):

  <big-table|<tiny|<tabular|<tformat|<table|<row|<cell|<math|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|19|33|5|8|cell-halign|c>|<cwith|19|33|5|8|cell-valign|c>|<cwith|19|26|4|4|cell-halign|c>|<cwith|19|26|4|4|cell-valign|c>|<cwith|19|26|4|4|cell-halign|c>|<cwith|19|26|4|4|cell-valign|c>|<cwith|27|34|4|4|cell-halign|c>|<cwith|27|34|4|4|cell-valign|c>|<cwith|27|34|4|4|cell-halign|c>|<cwith|27|34|4|4|cell-valign|c>|<cwith|2|2|1|3|cell-halign|c>|<cwith|2|2|1|3|cell-valign|c>|<cwith|3|3|1|3|cell-halign|c>|<cwith|3|3|1|3|cell-valign|c>|<cwith|4|4|1|3|cell-halign|c>|<cwith|4|4|1|3|cell-valign|c>|<cwith|5|5|1|3|cell-halign|c>|<cwith|5|5|1|3|cell-valign|c>|<cwith|6|6|1|3|cell-halign|c>|<cwith|6|6|1|3|cell-valign|c>|<cwith|7|7|1|3|cell-halign|c>|<cwith|7|7|1|3|cell-valign|c>|<cwith|8|8|1|3|cell-halign|c>|<cwith|8|8|1|3|cell-valign|c>|<cwith|9|15|1|3|cell-halign|c>|<cwith|9|15|1|3|cell-valign|c>|<cwith|9|9|1|3|cell-halign|c>|<cwith|9|9|1|3|cell-valign|c>|<cwith|10|10|1|3|cell-halign|c>|<cwith|10|10|1|3|cell-valign|c>|<cwith|11|11|1|3|cell-halign|c>|<cwith|11|11|1|3|cell-valign|c>|<cwith|12|12|1|3|cell-halign|c>|<cwith|12|12|1|3|cell-valign|c>|<cwith|13|13|1|3|cell-halign|c>|<cwith|13|13|1|3|cell-valign|c>|<cwith|14|14|1|3|cell-halign|c>|<cwith|14|14|1|3|cell-valign|c>|<cwith|15|15|1|3|cell-halign|c>|<cwith|15|15|1|3|cell-valign|c>|<cwith|16|22|1|3|cell-halign|c>|<cwith|16|22|1|3|cell-valign|c>|<cwith|16|16|1|3|cell-halign|c>|<cwith|16|16|1|3|cell-valign|c>|<cwith|17|17|1|3|cell-halign|c>|<cwith|17|17|1|3|cell-valign|c>|<cwith|18|18|1|3|cell-halign|c>|<cwith|18|18|1|3|cell-valign|c>|<cwith|19|19|1|3|cell-halign|c>|<cwith|19|19|1|3|cell-valign|c>|<cwith|20|20|1|3|cell-halign|c>|<cwith|20|20|1|3|cell-valign|c>|<cwith|21|21|1|3|cell-halign|c>|<cwith|21|21|1|3|cell-valign|c>|<cwith|22|22|1|3|cell-halign|c>|<cwith|22|22|1|3|cell-valign|c>|<cwith|23|29|1|3|cell-halign|c>|<cwith|23|29|1|3|cell-valign|c>|<cwith|23|23|1|3|cell-halign|c>|<cwith|23|23|1|3|cell-valign|c>|<cwith|24|24|1|3|cell-halign|c>|<cwith|24|24|1|3|cell-valign|c>|<cwith|25|25|1|3|cell-halign|c>|<cwith|25|25|1|3|cell-valign|c>|<cwith|26|26|1|3|cell-halign|c>|<cwith|26|26|1|3|cell-valign|c>|<cwith|27|27|1|3|cell-halign|c>|<cwith|27|27|1|3|cell-valign|c>|<cwith|28|28|1|3|cell-halign|c>|<cwith|28|28|1|3|cell-valign|c>|<cwith|29|29|1|3|cell-halign|c>|<cwith|29|29|1|3|cell-valign|c>|<cwith|30|32|1|3|cell-halign|c>|<cwith|30|32|1|3|cell-valign|c>|<cwith|30|32|1|3|cell-halign|c>|<cwith|30|32|1|3|cell-valign|c>|<cwith|30|30|1|3|cell-halign|c>|<cwith|30|30|1|3|cell-valign|c>|<cwith|31|31|1|3|cell-halign|c>|<cwith|31|31|1|3|cell-valign|c>|<cwith|32|32|1|3|cell-halign|c>|<cwith|32|32|1|3|cell-valign|c>|<cwith|33|33|1|3|cell-halign|c>|<cwith|33|33|1|3|cell-valign|c>|<cwith|33|33|1|3|cell-halign|c>|<cwith|33|33|1|3|cell-valign|c>|<cwith|33|33|1|3|cell-halign|c>|<cwith|33|33|1|3|cell-valign|c>|<cwith|33|33|1|3|cell-halign|c>|<cwith|33|33|1|3|cell-valign|c>|<cwith|1|-1|9|12|cell-background|pastel
  green>|<cwith|1|-1|1|8|cell-background|pastel
  blue>|<cwith|33|33|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|12|12|cell-rborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|12|12|cell-rborder|1ln>|<cwith|6|9|3|3|cell-halign|c>|<cwith|6|9|3|3|cell-valign|c>|<cwith|6|6|3|3|cell-halign|c>|<cwith|6|6|3|3|cell-valign|c>|<cwith|7|7|3|3|cell-halign|c>|<cwith|7|7|3|3|cell-valign|c>|<cwith|8|8|3|3|cell-halign|c>|<cwith|8|8|3|3|cell-valign|c>|<cwith|9|9|3|3|cell-halign|c>|<cwith|9|9|3|3|cell-valign|c>|<cwith|6|9|3|3|cell-background|pastel
  blue>|<cwith|6|6|3|3|cell-bborder|0ln>|<cwith|7|7|3|3|cell-tborder|0ln>|<cwith|5|6|3|3|cell-lborder|0ln>|<cwith|5|6|2|2|cell-rborder|0ln>|<cwith|5|6|3|3|cell-rborder|0ln>|<cwith|5|6|4|4|cell-lborder|0ln>|<cwith|5|5|3|3|cell-tborder|0ln>|<cwith|4|4|3|3|cell-bborder|0ln>|<cwith|5|5|3|3|cell-bborder|0ln>|<cwith|6|6|3|3|cell-tborder|0ln>|<cwith|5|5|3|3|cell-lborder|0ln>|<cwith|5|5|2|2|cell-rborder|0ln>|<cwith|5|5|3|3|cell-rborder|0ln>|<cwith|5|5|4|4|cell-lborder|0ln>|<cwith|10|13|3|3|cell-halign|c>|<cwith|10|13|3|3|cell-valign|c>|<cwith|10|10|3|3|cell-halign|c>|<cwith|10|10|3|3|cell-valign|c>|<cwith|11|11|3|3|cell-halign|c>|<cwith|11|11|3|3|cell-valign|c>|<cwith|12|12|3|3|cell-halign|c>|<cwith|12|12|3|3|cell-valign|c>|<cwith|13|13|3|3|cell-halign|c>|<cwith|13|13|3|3|cell-valign|c>|<cwith|13|13|3|3|cell-halign|c>|<cwith|13|13|3|3|cell-valign|c>|<cwith|10|13|3|3|cell-background|pastel
  blue>|<cwith|10|13|3|3|cell-halign|c>|<cwith|10|13|3|3|cell-valign|c>|<cwith|10|10|3|3|cell-halign|c>|<cwith|10|10|3|3|cell-valign|c>|<cwith|11|11|3|3|cell-halign|c>|<cwith|11|11|3|3|cell-valign|c>|<cwith|12|12|3|3|cell-halign|c>|<cwith|12|12|3|3|cell-valign|c>|<cwith|13|13|3|3|cell-halign|c>|<cwith|13|13|3|3|cell-valign|c>|<cwith|10|13|3|3|cell-background|pastel
  blue>|<cwith|10|10|3|3|cell-bborder|0ln>|<cwith|11|11|3|3|cell-tborder|0ln>|<cwith|10|10|3|3|cell-lborder|0ln>|<cwith|10|10|3|3|cell-rborder|0ln>|<cwith|10|10|3|3|cell-tborder|0ln>|<cwith|14|17|3|3|cell-halign|c>|<cwith|14|17|3|3|cell-valign|c>|<cwith|14|14|3|3|cell-halign|c>|<cwith|14|14|3|3|cell-valign|c>|<cwith|15|15|3|3|cell-halign|c>|<cwith|15|15|3|3|cell-valign|c>|<cwith|16|16|3|3|cell-halign|c>|<cwith|16|16|3|3|cell-valign|c>|<cwith|17|17|3|3|cell-halign|c>|<cwith|17|17|3|3|cell-valign|c>|<cwith|17|17|3|3|cell-halign|c>|<cwith|17|17|3|3|cell-valign|c>|<cwith|14|17|3|3|cell-background|pastel
  blue>|<cwith|14|17|3|3|cell-halign|c>|<cwith|14|17|3|3|cell-valign|c>|<cwith|14|14|3|3|cell-halign|c>|<cwith|14|14|3|3|cell-valign|c>|<cwith|15|15|3|3|cell-halign|c>|<cwith|15|15|3|3|cell-valign|c>|<cwith|16|16|3|3|cell-halign|c>|<cwith|16|16|3|3|cell-valign|c>|<cwith|17|17|3|3|cell-halign|c>|<cwith|17|17|3|3|cell-valign|c>|<cwith|14|17|3|3|cell-background|pastel
  blue>|<cwith|14|14|3|3|cell-bborder|0ln>|<cwith|15|15|3|3|cell-tborder|0ln>|<cwith|14|14|3|3|cell-lborder|0ln>|<cwith|14|14|3|3|cell-rborder|0ln>|<cwith|14|14|3|3|cell-tborder|0ln>|<cwith|18|21|3|3|cell-halign|c>|<cwith|18|21|3|3|cell-valign|c>|<cwith|18|18|3|3|cell-halign|c>|<cwith|18|18|3|3|cell-valign|c>|<cwith|19|19|3|3|cell-halign|c>|<cwith|19|19|3|3|cell-valign|c>|<cwith|20|20|3|3|cell-halign|c>|<cwith|20|20|3|3|cell-valign|c>|<cwith|21|21|3|3|cell-halign|c>|<cwith|21|21|3|3|cell-valign|c>|<cwith|21|21|3|3|cell-halign|c>|<cwith|21|21|3|3|cell-valign|c>|<cwith|18|21|3|3|cell-background|pastel
  blue>|<cwith|18|21|3|3|cell-halign|c>|<cwith|18|21|3|3|cell-valign|c>|<cwith|18|18|3|3|cell-halign|c>|<cwith|18|18|3|3|cell-valign|c>|<cwith|19|19|3|3|cell-halign|c>|<cwith|19|19|3|3|cell-valign|c>|<cwith|20|20|3|3|cell-halign|c>|<cwith|20|20|3|3|cell-valign|c>|<cwith|21|21|3|3|cell-halign|c>|<cwith|21|21|3|3|cell-valign|c>|<cwith|18|21|3|3|cell-background|pastel
  blue>|<cwith|18|18|3|3|cell-bborder|0ln>|<cwith|19|19|3|3|cell-tborder|0ln>|<cwith|18|18|3|3|cell-lborder|0ln>|<cwith|18|18|3|3|cell-rborder|0ln>|<cwith|18|18|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|22|3|3|cell-halign|c>|<cwith|22|22|3|3|cell-valign|c>|<cwith|23|23|3|3|cell-halign|c>|<cwith|23|23|3|3|cell-valign|c>|<cwith|24|24|3|3|cell-halign|c>|<cwith|24|24|3|3|cell-valign|c>|<cwith|25|25|3|3|cell-halign|c>|<cwith|25|25|3|3|cell-valign|c>|<cwith|25|25|3|3|cell-halign|c>|<cwith|25|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-background|pastel
  blue>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|22|3|3|cell-halign|c>|<cwith|22|22|3|3|cell-valign|c>|<cwith|23|23|3|3|cell-halign|c>|<cwith|23|23|3|3|cell-valign|c>|<cwith|24|24|3|3|cell-halign|c>|<cwith|24|24|3|3|cell-valign|c>|<cwith|25|25|3|3|cell-halign|c>|<cwith|25|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-background|pastel
  blue>|<cwith|22|22|3|3|cell-bborder|0ln>|<cwith|23|23|3|3|cell-tborder|0ln>|<cwith|22|22|3|3|cell-lborder|0ln>|<cwith|22|22|3|3|cell-rborder|0ln>|<cwith|22|22|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|26|3|3|cell-halign|c>|<cwith|26|26|3|3|cell-valign|c>|<cwith|27|27|3|3|cell-halign|c>|<cwith|27|27|3|3|cell-valign|c>|<cwith|28|28|3|3|cell-halign|c>|<cwith|28|28|3|3|cell-valign|c>|<cwith|29|29|3|3|cell-halign|c>|<cwith|29|29|3|3|cell-valign|c>|<cwith|29|29|3|3|cell-halign|c>|<cwith|29|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-background|pastel
  blue>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|26|3|3|cell-halign|c>|<cwith|26|26|3|3|cell-valign|c>|<cwith|27|27|3|3|cell-halign|c>|<cwith|27|27|3|3|cell-valign|c>|<cwith|28|28|3|3|cell-halign|c>|<cwith|28|28|3|3|cell-valign|c>|<cwith|29|29|3|3|cell-halign|c>|<cwith|29|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-background|pastel
  blue>|<cwith|26|26|3|3|cell-bborder|0ln>|<cwith|27|27|3|3|cell-tborder|0ln>|<cwith|26|26|3|3|cell-lborder|0ln>|<cwith|26|26|3|3|cell-rborder|0ln>|<cwith|26|26|3|3|cell-tborder|0ln>|<cwith|30|33|3|3|cell-halign|c>|<cwith|30|33|3|3|cell-valign|c>|<cwith|30|30|3|3|cell-halign|c>|<cwith|30|30|3|3|cell-valign|c>|<cwith|31|31|3|3|cell-halign|c>|<cwith|31|31|3|3|cell-valign|c>|<cwith|32|32|3|3|cell-halign|c>|<cwith|32|32|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|30|33|3|3|cell-background|pastel
  blue>|<cwith|30|33|3|3|cell-halign|c>|<cwith|30|33|3|3|cell-valign|c>|<cwith|30|30|3|3|cell-halign|c>|<cwith|30|30|3|3|cell-valign|c>|<cwith|31|31|3|3|cell-halign|c>|<cwith|31|31|3|3|cell-valign|c>|<cwith|32|32|3|3|cell-halign|c>|<cwith|32|32|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|30|33|3|3|cell-background|pastel
  blue>|<cwith|30|30|3|3|cell-bborder|0ln>|<cwith|31|31|3|3|cell-tborder|0ln>|<cwith|30|30|3|3|cell-lborder|0ln>|<cwith|30|30|3|3|cell-rborder|0ln>|<cwith|30|30|3|3|cell-tborder|0ln>|<cwith|4|4|9|11|cell-halign|c>|<cwith|4|4|9|11|cell-valign|c>|<cwith|4|4|9|11|cell-background|pastel
  green>|<cwith|5|5|9|11|cell-halign|c>|<cwith|5|5|9|11|cell-valign|c>|<cwith|5|5|9|11|cell-background|pastel
  green>|<cwith|6|6|9|11|cell-halign|c>|<cwith|6|6|9|11|cell-valign|c>|<cwith|6|6|9|11|cell-background|pastel
  green>|<cwith|7|7|9|11|cell-halign|c>|<cwith|7|7|9|11|cell-valign|c>|<cwith|7|7|9|11|cell-background|pastel
  green>|<cwith|8|8|9|11|cell-halign|c>|<cwith|8|8|9|11|cell-valign|c>|<cwith|8|8|9|11|cell-background|pastel
  green>|<cwith|9|9|9|11|cell-halign|c>|<cwith|9|9|9|11|cell-valign|c>|<cwith|9|9|9|11|cell-background|pastel
  green>|<cwith|12|12|9|11|cell-halign|c>|<cwith|12|12|9|11|cell-valign|c>|<cwith|12|12|9|11|cell-background|pastel
  green>|<cwith|13|13|9|11|cell-halign|c>|<cwith|13|13|9|11|cell-valign|c>|<cwith|13|13|9|11|cell-background|pastel
  green>|<cwith|14|14|9|11|cell-halign|c>|<cwith|14|14|9|11|cell-valign|c>|<cwith|14|14|9|11|cell-background|pastel
  green>|<cwith|15|15|9|11|cell-halign|c>|<cwith|15|15|9|11|cell-valign|c>|<cwith|15|15|9|11|cell-background|pastel
  green>|<cwith|16|16|9|11|cell-halign|c>|<cwith|16|16|9|11|cell-valign|c>|<cwith|16|16|9|11|cell-background|pastel
  green>|<cwith|17|17|9|11|cell-halign|c>|<cwith|17|17|9|11|cell-valign|c>|<cwith|17|17|9|11|cell-background|pastel
  green>|<cwith|20|20|9|11|cell-halign|c>|<cwith|20|20|9|11|cell-valign|c>|<cwith|20|20|9|11|cell-background|pastel
  green>|<cwith|21|21|9|11|cell-halign|c>|<cwith|21|21|9|11|cell-valign|c>|<cwith|21|21|9|11|cell-background|pastel
  green>|<cwith|22|22|9|11|cell-halign|c>|<cwith|22|22|9|11|cell-valign|c>|<cwith|22|22|9|11|cell-background|pastel
  green>|<cwith|23|23|9|11|cell-halign|c>|<cwith|23|23|9|11|cell-valign|c>|<cwith|23|23|9|11|cell-background|pastel
  green>|<cwith|24|24|9|11|cell-halign|c>|<cwith|24|24|9|11|cell-valign|c>|<cwith|24|24|9|11|cell-background|pastel
  green>|<cwith|25|25|9|11|cell-halign|c>|<cwith|25|25|9|11|cell-valign|c>|<cwith|25|25|9|11|cell-background|pastel
  green>|<cwith|28|28|9|11|cell-halign|c>|<cwith|28|28|9|11|cell-valign|c>|<cwith|28|28|9|11|cell-background|pastel
  green>|<cwith|29|29|9|11|cell-halign|c>|<cwith|29|29|9|11|cell-valign|c>|<cwith|29|29|9|11|cell-background|pastel
  green>|<cwith|30|30|9|11|cell-halign|c>|<cwith|30|30|9|11|cell-valign|c>|<cwith|30|30|9|11|cell-background|pastel
  green>|<cwith|31|31|9|11|cell-halign|c>|<cwith|31|31|9|11|cell-valign|c>|<cwith|31|31|9|11|cell-background|pastel
  green>|<cwith|32|32|9|11|cell-halign|c>|<cwith|32|32|9|11|cell-valign|c>|<cwith|32|32|9|11|cell-background|pastel
  green>|<cwith|33|33|9|11|cell-halign|c>|<cwith|33|33|9|11|cell-valign|c>|<cwith|33|33|9|11|cell-background|pastel
  green>|<table|<row|<cell|a<rsub|2>>|<cell|a<rsub|1>>|<cell|a<rsub|0>>|<cell|R<rsub|0>>|<cell|R<rsub|1>>|<cell|R<rsub|2>>|<cell|R<rsub|3>>|<cell|R<rsub|VIP>>|<cell|UP>|<cell|STOP>|<cell|DOWN>|<cell|HEX>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|<shell|0x0>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|<shell|0x4>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|<shell|0x4>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|<shell|0x4>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|<shell|0x4>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|<shell|0x4>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|<shell|0x4>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<shell|0x4>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|<shell|0x2>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x6>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x6>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<shell|0x6>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x6>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x6>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x6>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x6>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|<shell|0x5>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|<shell|0x5>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|<shell|0x5>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|<shell|0x5>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|<shell|0x5>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|<shell|0x5>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|<shell|0x5>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x3>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|<shell|0x7>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|<shell|0x7>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|<shell|0x7>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|<shell|0x7>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|<shell|0x7>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|<shell|0x7>>>|<row|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|<shell|0x7>>>>>>>>>>>>|Comparator
  truth table for <math|a<rsub|2>=0,a<rsub|1>=0,a<rsub|0>=1>>

  The third truth table represents the 32 possible <math|R<rsub|x>> requests
  in the case where <math|a<rsub|2>=0,a<rsub|1>=1,a<rsub|0>=0> (so we are in
  the case where the arrival signal <math|A<rsub|2>> is activated):

  <big-table|<tiny|<tabular|<tformat|<table|<row|<cell|<math|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|19|33|5|8|cell-halign|c>|<cwith|19|33|5|8|cell-valign|c>|<cwith|19|26|4|4|cell-halign|c>|<cwith|19|26|4|4|cell-valign|c>|<cwith|19|26|4|4|cell-halign|c>|<cwith|19|26|4|4|cell-valign|c>|<cwith|27|34|4|4|cell-halign|c>|<cwith|27|34|4|4|cell-valign|c>|<cwith|27|34|4|4|cell-halign|c>|<cwith|27|34|4|4|cell-valign|c>|<cwith|2|2|1|3|cell-halign|c>|<cwith|2|2|1|3|cell-valign|c>|<cwith|3|3|1|3|cell-halign|c>|<cwith|3|3|1|3|cell-valign|c>|<cwith|4|4|1|3|cell-halign|c>|<cwith|4|4|1|3|cell-valign|c>|<cwith|5|5|1|3|cell-halign|c>|<cwith|5|5|1|3|cell-valign|c>|<cwith|6|6|1|3|cell-halign|c>|<cwith|6|6|1|3|cell-valign|c>|<cwith|7|7|1|3|cell-halign|c>|<cwith|7|7|1|3|cell-valign|c>|<cwith|8|8|1|3|cell-halign|c>|<cwith|8|8|1|3|cell-valign|c>|<cwith|9|15|1|3|cell-halign|c>|<cwith|9|15|1|3|cell-valign|c>|<cwith|9|9|1|3|cell-halign|c>|<cwith|9|9|1|3|cell-valign|c>|<cwith|10|10|1|3|cell-halign|c>|<cwith|10|10|1|3|cell-valign|c>|<cwith|11|11|1|3|cell-halign|c>|<cwith|11|11|1|3|cell-valign|c>|<cwith|12|12|1|3|cell-halign|c>|<cwith|12|12|1|3|cell-valign|c>|<cwith|13|13|1|3|cell-halign|c>|<cwith|13|13|1|3|cell-valign|c>|<cwith|14|14|1|3|cell-halign|c>|<cwith|14|14|1|3|cell-valign|c>|<cwith|15|15|1|3|cell-halign|c>|<cwith|15|15|1|3|cell-valign|c>|<cwith|16|22|1|3|cell-halign|c>|<cwith|16|22|1|3|cell-valign|c>|<cwith|16|16|1|3|cell-halign|c>|<cwith|16|16|1|3|cell-valign|c>|<cwith|17|17|1|3|cell-halign|c>|<cwith|17|17|1|3|cell-valign|c>|<cwith|18|18|1|3|cell-halign|c>|<cwith|18|18|1|3|cell-valign|c>|<cwith|19|19|1|3|cell-halign|c>|<cwith|19|19|1|3|cell-valign|c>|<cwith|20|20|1|3|cell-halign|c>|<cwith|20|20|1|3|cell-valign|c>|<cwith|21|21|1|3|cell-halign|c>|<cwith|21|21|1|3|cell-valign|c>|<cwith|22|22|1|3|cell-halign|c>|<cwith|22|22|1|3|cell-valign|c>|<cwith|23|29|1|3|cell-halign|c>|<cwith|23|29|1|3|cell-valign|c>|<cwith|23|23|1|3|cell-halign|c>|<cwith|23|23|1|3|cell-valign|c>|<cwith|24|24|1|3|cell-halign|c>|<cwith|24|24|1|3|cell-valign|c>|<cwith|25|25|1|3|cell-halign|c>|<cwith|25|25|1|3|cell-valign|c>|<cwith|26|26|1|3|cell-halign|c>|<cwith|26|26|1|3|cell-valign|c>|<cwith|27|27|1|3|cell-halign|c>|<cwith|27|27|1|3|cell-valign|c>|<cwith|28|28|1|3|cell-halign|c>|<cwith|28|28|1|3|cell-valign|c>|<cwith|29|29|1|3|cell-halign|c>|<cwith|29|29|1|3|cell-valign|c>|<cwith|30|32|1|3|cell-halign|c>|<cwith|30|32|1|3|cell-valign|c>|<cwith|30|32|1|3|cell-halign|c>|<cwith|30|32|1|3|cell-valign|c>|<cwith|30|30|1|3|cell-halign|c>|<cwith|30|30|1|3|cell-valign|c>|<cwith|31|31|1|3|cell-halign|c>|<cwith|31|31|1|3|cell-valign|c>|<cwith|32|32|1|3|cell-halign|c>|<cwith|32|32|1|3|cell-valign|c>|<cwith|33|33|1|3|cell-halign|c>|<cwith|33|33|1|3|cell-valign|c>|<cwith|33|33|1|3|cell-halign|c>|<cwith|33|33|1|3|cell-valign|c>|<cwith|33|33|1|3|cell-halign|c>|<cwith|33|33|1|3|cell-valign|c>|<cwith|33|33|1|3|cell-halign|c>|<cwith|33|33|1|3|cell-valign|c>|<cwith|1|-1|9|12|cell-background|pastel
  green>|<cwith|1|-1|1|8|cell-background|pastel
  blue>|<cwith|33|33|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|12|12|cell-rborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|12|12|cell-rborder|1ln>|<cwith|6|9|3|3|cell-halign|c>|<cwith|6|9|3|3|cell-valign|c>|<cwith|6|6|3|3|cell-halign|c>|<cwith|6|6|3|3|cell-valign|c>|<cwith|7|7|3|3|cell-halign|c>|<cwith|7|7|3|3|cell-valign|c>|<cwith|8|8|3|3|cell-halign|c>|<cwith|8|8|3|3|cell-valign|c>|<cwith|9|9|3|3|cell-halign|c>|<cwith|9|9|3|3|cell-valign|c>|<cwith|6|9|3|3|cell-background|pastel
  blue>|<cwith|6|6|3|3|cell-bborder|0ln>|<cwith|7|7|3|3|cell-tborder|0ln>|<cwith|5|6|3|3|cell-lborder|0ln>|<cwith|5|6|2|2|cell-rborder|0ln>|<cwith|5|6|3|3|cell-rborder|0ln>|<cwith|5|6|4|4|cell-lborder|0ln>|<cwith|5|5|3|3|cell-tborder|0ln>|<cwith|4|4|3|3|cell-bborder|0ln>|<cwith|5|5|3|3|cell-bborder|0ln>|<cwith|6|6|3|3|cell-tborder|0ln>|<cwith|5|5|3|3|cell-lborder|0ln>|<cwith|5|5|2|2|cell-rborder|0ln>|<cwith|5|5|3|3|cell-rborder|0ln>|<cwith|5|5|4|4|cell-lborder|0ln>|<cwith|10|13|3|3|cell-halign|c>|<cwith|10|13|3|3|cell-valign|c>|<cwith|10|10|3|3|cell-halign|c>|<cwith|10|10|3|3|cell-valign|c>|<cwith|11|11|3|3|cell-halign|c>|<cwith|11|11|3|3|cell-valign|c>|<cwith|12|12|3|3|cell-halign|c>|<cwith|12|12|3|3|cell-valign|c>|<cwith|13|13|3|3|cell-halign|c>|<cwith|13|13|3|3|cell-valign|c>|<cwith|13|13|3|3|cell-halign|c>|<cwith|13|13|3|3|cell-valign|c>|<cwith|10|13|3|3|cell-background|pastel
  blue>|<cwith|10|13|3|3|cell-halign|c>|<cwith|10|13|3|3|cell-valign|c>|<cwith|10|10|3|3|cell-halign|c>|<cwith|10|10|3|3|cell-valign|c>|<cwith|11|11|3|3|cell-halign|c>|<cwith|11|11|3|3|cell-valign|c>|<cwith|12|12|3|3|cell-halign|c>|<cwith|12|12|3|3|cell-valign|c>|<cwith|13|13|3|3|cell-halign|c>|<cwith|13|13|3|3|cell-valign|c>|<cwith|10|13|3|3|cell-background|pastel
  blue>|<cwith|10|10|3|3|cell-bborder|0ln>|<cwith|11|11|3|3|cell-tborder|0ln>|<cwith|10|10|3|3|cell-lborder|0ln>|<cwith|10|10|3|3|cell-rborder|0ln>|<cwith|10|10|3|3|cell-tborder|0ln>|<cwith|14|17|3|3|cell-halign|c>|<cwith|14|17|3|3|cell-valign|c>|<cwith|14|14|3|3|cell-halign|c>|<cwith|14|14|3|3|cell-valign|c>|<cwith|15|15|3|3|cell-halign|c>|<cwith|15|15|3|3|cell-valign|c>|<cwith|16|16|3|3|cell-halign|c>|<cwith|16|16|3|3|cell-valign|c>|<cwith|17|17|3|3|cell-halign|c>|<cwith|17|17|3|3|cell-valign|c>|<cwith|17|17|3|3|cell-halign|c>|<cwith|17|17|3|3|cell-valign|c>|<cwith|14|17|3|3|cell-background|pastel
  blue>|<cwith|14|17|3|3|cell-halign|c>|<cwith|14|17|3|3|cell-valign|c>|<cwith|14|14|3|3|cell-halign|c>|<cwith|14|14|3|3|cell-valign|c>|<cwith|15|15|3|3|cell-halign|c>|<cwith|15|15|3|3|cell-valign|c>|<cwith|16|16|3|3|cell-halign|c>|<cwith|16|16|3|3|cell-valign|c>|<cwith|17|17|3|3|cell-halign|c>|<cwith|17|17|3|3|cell-valign|c>|<cwith|14|17|3|3|cell-background|pastel
  blue>|<cwith|14|14|3|3|cell-bborder|0ln>|<cwith|15|15|3|3|cell-tborder|0ln>|<cwith|14|14|3|3|cell-lborder|0ln>|<cwith|14|14|3|3|cell-rborder|0ln>|<cwith|14|14|3|3|cell-tborder|0ln>|<cwith|18|21|3|3|cell-halign|c>|<cwith|18|21|3|3|cell-valign|c>|<cwith|18|18|3|3|cell-halign|c>|<cwith|18|18|3|3|cell-valign|c>|<cwith|19|19|3|3|cell-halign|c>|<cwith|19|19|3|3|cell-valign|c>|<cwith|20|20|3|3|cell-halign|c>|<cwith|20|20|3|3|cell-valign|c>|<cwith|21|21|3|3|cell-halign|c>|<cwith|21|21|3|3|cell-valign|c>|<cwith|21|21|3|3|cell-halign|c>|<cwith|21|21|3|3|cell-valign|c>|<cwith|18|21|3|3|cell-background|pastel
  blue>|<cwith|18|21|3|3|cell-halign|c>|<cwith|18|21|3|3|cell-valign|c>|<cwith|18|18|3|3|cell-halign|c>|<cwith|18|18|3|3|cell-valign|c>|<cwith|19|19|3|3|cell-halign|c>|<cwith|19|19|3|3|cell-valign|c>|<cwith|20|20|3|3|cell-halign|c>|<cwith|20|20|3|3|cell-valign|c>|<cwith|21|21|3|3|cell-halign|c>|<cwith|21|21|3|3|cell-valign|c>|<cwith|18|21|3|3|cell-background|pastel
  blue>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|22|3|3|cell-halign|c>|<cwith|22|22|3|3|cell-valign|c>|<cwith|23|23|3|3|cell-halign|c>|<cwith|23|23|3|3|cell-valign|c>|<cwith|24|24|3|3|cell-halign|c>|<cwith|24|24|3|3|cell-valign|c>|<cwith|25|25|3|3|cell-halign|c>|<cwith|25|25|3|3|cell-valign|c>|<cwith|25|25|3|3|cell-halign|c>|<cwith|25|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-background|pastel
  blue>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|22|3|3|cell-halign|c>|<cwith|22|22|3|3|cell-valign|c>|<cwith|23|23|3|3|cell-halign|c>|<cwith|23|23|3|3|cell-valign|c>|<cwith|24|24|3|3|cell-halign|c>|<cwith|24|24|3|3|cell-valign|c>|<cwith|25|25|3|3|cell-halign|c>|<cwith|25|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-background|pastel
  blue>|<cwith|22|22|3|3|cell-bborder|0ln>|<cwith|23|23|3|3|cell-tborder|0ln>|<cwith|22|22|3|3|cell-lborder|0ln>|<cwith|22|22|3|3|cell-rborder|0ln>|<cwith|22|22|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|26|3|3|cell-halign|c>|<cwith|26|26|3|3|cell-valign|c>|<cwith|27|27|3|3|cell-halign|c>|<cwith|27|27|3|3|cell-valign|c>|<cwith|28|28|3|3|cell-halign|c>|<cwith|28|28|3|3|cell-valign|c>|<cwith|29|29|3|3|cell-halign|c>|<cwith|29|29|3|3|cell-valign|c>|<cwith|29|29|3|3|cell-halign|c>|<cwith|29|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-background|pastel
  blue>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|26|3|3|cell-halign|c>|<cwith|26|26|3|3|cell-valign|c>|<cwith|27|27|3|3|cell-halign|c>|<cwith|27|27|3|3|cell-valign|c>|<cwith|28|28|3|3|cell-halign|c>|<cwith|28|28|3|3|cell-valign|c>|<cwith|29|29|3|3|cell-halign|c>|<cwith|29|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-background|pastel
  blue>|<cwith|26|26|3|3|cell-bborder|0ln>|<cwith|27|27|3|3|cell-tborder|0ln>|<cwith|26|26|3|3|cell-lborder|0ln>|<cwith|26|26|3|3|cell-rborder|0ln>|<cwith|26|26|3|3|cell-tborder|0ln>|<cwith|30|33|3|3|cell-halign|c>|<cwith|30|33|3|3|cell-valign|c>|<cwith|30|30|3|3|cell-halign|c>|<cwith|30|30|3|3|cell-valign|c>|<cwith|31|31|3|3|cell-halign|c>|<cwith|31|31|3|3|cell-valign|c>|<cwith|32|32|3|3|cell-halign|c>|<cwith|32|32|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|30|33|3|3|cell-background|pastel
  blue>|<cwith|30|33|3|3|cell-halign|c>|<cwith|30|33|3|3|cell-valign|c>|<cwith|30|30|3|3|cell-halign|c>|<cwith|30|30|3|3|cell-valign|c>|<cwith|31|31|3|3|cell-halign|c>|<cwith|31|31|3|3|cell-valign|c>|<cwith|32|32|3|3|cell-halign|c>|<cwith|32|32|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|30|33|3|3|cell-background|pastel
  blue>|<cwith|30|30|3|3|cell-bborder|0ln>|<cwith|31|31|3|3|cell-tborder|0ln>|<cwith|30|30|3|3|cell-lborder|0ln>|<cwith|30|30|3|3|cell-rborder|0ln>|<cwith|30|30|3|3|cell-tborder|0ln>|<cwith|2|33|2|2|cell-halign|c>|<cwith|2|33|2|2|cell-valign|c>|<cwith|2|2|2|2|cell-halign|c>|<cwith|2|2|2|2|cell-valign|c>|<cwith|3|3|2|2|cell-halign|c>|<cwith|3|3|2|2|cell-valign|c>|<cwith|4|4|2|2|cell-halign|c>|<cwith|4|4|2|2|cell-valign|c>|<cwith|5|5|2|2|cell-halign|c>|<cwith|5|5|2|2|cell-valign|c>|<cwith|6|6|2|2|cell-halign|c>|<cwith|6|6|2|2|cell-valign|c>|<cwith|7|7|2|2|cell-halign|c>|<cwith|7|7|2|2|cell-valign|c>|<cwith|8|8|2|2|cell-halign|c>|<cwith|8|8|2|2|cell-valign|c>|<cwith|9|15|2|2|cell-halign|c>|<cwith|9|15|2|2|cell-valign|c>|<cwith|9|9|2|2|cell-halign|c>|<cwith|9|9|2|2|cell-valign|c>|<cwith|10|10|2|2|cell-halign|c>|<cwith|10|10|2|2|cell-valign|c>|<cwith|11|11|2|2|cell-halign|c>|<cwith|11|11|2|2|cell-valign|c>|<cwith|12|12|2|2|cell-halign|c>|<cwith|12|12|2|2|cell-valign|c>|<cwith|13|13|2|2|cell-halign|c>|<cwith|13|13|2|2|cell-valign|c>|<cwith|14|14|2|2|cell-halign|c>|<cwith|14|14|2|2|cell-valign|c>|<cwith|15|15|2|2|cell-halign|c>|<cwith|15|15|2|2|cell-valign|c>|<cwith|16|22|2|2|cell-halign|c>|<cwith|16|22|2|2|cell-valign|c>|<cwith|16|16|2|2|cell-halign|c>|<cwith|16|16|2|2|cell-valign|c>|<cwith|17|17|2|2|cell-halign|c>|<cwith|17|17|2|2|cell-valign|c>|<cwith|18|18|2|2|cell-halign|c>|<cwith|18|18|2|2|cell-valign|c>|<cwith|19|19|2|2|cell-halign|c>|<cwith|19|19|2|2|cell-valign|c>|<cwith|20|20|2|2|cell-halign|c>|<cwith|20|20|2|2|cell-valign|c>|<cwith|21|21|2|2|cell-halign|c>|<cwith|21|21|2|2|cell-valign|c>|<cwith|22|22|2|2|cell-halign|c>|<cwith|22|22|2|2|cell-valign|c>|<cwith|23|29|2|2|cell-halign|c>|<cwith|23|29|2|2|cell-valign|c>|<cwith|23|23|2|2|cell-halign|c>|<cwith|23|23|2|2|cell-valign|c>|<cwith|24|24|2|2|cell-halign|c>|<cwith|24|24|2|2|cell-valign|c>|<cwith|25|25|2|2|cell-halign|c>|<cwith|25|25|2|2|cell-valign|c>|<cwith|26|26|2|2|cell-halign|c>|<cwith|26|26|2|2|cell-valign|c>|<cwith|27|27|2|2|cell-halign|c>|<cwith|27|27|2|2|cell-valign|c>|<cwith|28|28|2|2|cell-halign|c>|<cwith|28|28|2|2|cell-valign|c>|<cwith|29|29|2|2|cell-halign|c>|<cwith|29|29|2|2|cell-valign|c>|<cwith|30|32|2|2|cell-halign|c>|<cwith|30|32|2|2|cell-valign|c>|<cwith|30|32|2|2|cell-halign|c>|<cwith|30|32|2|2|cell-valign|c>|<cwith|30|30|2|2|cell-halign|c>|<cwith|30|30|2|2|cell-valign|c>|<cwith|31|31|2|2|cell-halign|c>|<cwith|31|31|2|2|cell-valign|c>|<cwith|32|32|2|2|cell-halign|c>|<cwith|32|32|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|2|33|2|2|cell-background|pastel
  blue>|<cwith|33|33|2|2|cell-bborder|1ln>|<cwith|2|2|2|2|cell-tborder|1ln>|<cwith|6|9|2|2|cell-halign|c>|<cwith|6|9|2|2|cell-valign|c>|<cwith|6|6|2|2|cell-halign|c>|<cwith|6|6|2|2|cell-valign|c>|<cwith|7|7|2|2|cell-halign|c>|<cwith|7|7|2|2|cell-valign|c>|<cwith|8|8|2|2|cell-halign|c>|<cwith|8|8|2|2|cell-valign|c>|<cwith|9|9|2|2|cell-halign|c>|<cwith|9|9|2|2|cell-valign|c>|<cwith|6|9|2|2|cell-background|pastel
  blue>|<cwith|6|6|2|2|cell-bborder|0ln>|<cwith|7|7|2|2|cell-tborder|0ln>|<cwith|5|6|2|2|cell-lborder|0ln>|<cwith|5|6|2|2|cell-rborder|0ln>|<cwith|5|5|2|2|cell-tborder|0ln>|<cwith|4|4|2|2|cell-bborder|0ln>|<cwith|5|5|2|2|cell-bborder|0ln>|<cwith|6|6|2|2|cell-tborder|0ln>|<cwith|5|5|2|2|cell-lborder|0ln>|<cwith|5|5|2|2|cell-rborder|0ln>|<cwith|10|13|2|2|cell-halign|c>|<cwith|10|13|2|2|cell-valign|c>|<cwith|10|10|2|2|cell-halign|c>|<cwith|10|10|2|2|cell-valign|c>|<cwith|11|11|2|2|cell-halign|c>|<cwith|11|11|2|2|cell-valign|c>|<cwith|12|12|2|2|cell-halign|c>|<cwith|12|12|2|2|cell-valign|c>|<cwith|13|13|2|2|cell-halign|c>|<cwith|13|13|2|2|cell-valign|c>|<cwith|13|13|2|2|cell-halign|c>|<cwith|13|13|2|2|cell-valign|c>|<cwith|10|13|2|2|cell-background|pastel
  blue>|<cwith|10|13|2|2|cell-halign|c>|<cwith|10|13|2|2|cell-valign|c>|<cwith|10|10|2|2|cell-halign|c>|<cwith|10|10|2|2|cell-valign|c>|<cwith|11|11|2|2|cell-halign|c>|<cwith|11|11|2|2|cell-valign|c>|<cwith|12|12|2|2|cell-halign|c>|<cwith|12|12|2|2|cell-valign|c>|<cwith|13|13|2|2|cell-halign|c>|<cwith|13|13|2|2|cell-valign|c>|<cwith|10|13|2|2|cell-background|pastel
  blue>|<cwith|10|10|2|2|cell-bborder|0ln>|<cwith|11|11|2|2|cell-tborder|0ln>|<cwith|10|10|2|2|cell-lborder|0ln>|<cwith|10|10|2|2|cell-rborder|0ln>|<cwith|10|10|2|2|cell-tborder|0ln>|<cwith|14|17|2|2|cell-halign|c>|<cwith|14|17|2|2|cell-valign|c>|<cwith|14|14|2|2|cell-halign|c>|<cwith|14|14|2|2|cell-valign|c>|<cwith|15|15|2|2|cell-halign|c>|<cwith|15|15|2|2|cell-valign|c>|<cwith|16|16|2|2|cell-halign|c>|<cwith|16|16|2|2|cell-valign|c>|<cwith|17|17|2|2|cell-halign|c>|<cwith|17|17|2|2|cell-valign|c>|<cwith|17|17|2|2|cell-halign|c>|<cwith|17|17|2|2|cell-valign|c>|<cwith|14|17|2|2|cell-background|pastel
  blue>|<cwith|14|17|2|2|cell-halign|c>|<cwith|14|17|2|2|cell-valign|c>|<cwith|14|14|2|2|cell-halign|c>|<cwith|14|14|2|2|cell-valign|c>|<cwith|15|15|2|2|cell-halign|c>|<cwith|15|15|2|2|cell-valign|c>|<cwith|16|16|2|2|cell-halign|c>|<cwith|16|16|2|2|cell-valign|c>|<cwith|17|17|2|2|cell-halign|c>|<cwith|17|17|2|2|cell-valign|c>|<cwith|14|17|2|2|cell-background|pastel
  blue>|<cwith|14|14|2|2|cell-bborder|0ln>|<cwith|15|15|2|2|cell-tborder|0ln>|<cwith|14|14|2|2|cell-lborder|0ln>|<cwith|14|14|2|2|cell-rborder|0ln>|<cwith|14|14|2|2|cell-tborder|0ln>|<cwith|18|21|2|2|cell-halign|c>|<cwith|18|21|2|2|cell-valign|c>|<cwith|18|18|2|2|cell-halign|c>|<cwith|18|18|2|2|cell-valign|c>|<cwith|19|19|2|2|cell-halign|c>|<cwith|19|19|2|2|cell-valign|c>|<cwith|20|20|2|2|cell-halign|c>|<cwith|20|20|2|2|cell-valign|c>|<cwith|21|21|2|2|cell-halign|c>|<cwith|21|21|2|2|cell-valign|c>|<cwith|21|21|2|2|cell-halign|c>|<cwith|21|21|2|2|cell-valign|c>|<cwith|18|21|2|2|cell-background|pastel
  blue>|<cwith|18|21|2|2|cell-halign|c>|<cwith|18|21|2|2|cell-valign|c>|<cwith|18|18|2|2|cell-halign|c>|<cwith|18|18|2|2|cell-valign|c>|<cwith|19|19|2|2|cell-halign|c>|<cwith|19|19|2|2|cell-valign|c>|<cwith|20|20|2|2|cell-halign|c>|<cwith|20|20|2|2|cell-valign|c>|<cwith|21|21|2|2|cell-halign|c>|<cwith|21|21|2|2|cell-valign|c>|<cwith|18|21|2|2|cell-background|pastel
  blue>|<cwith|18|18|2|2|cell-bborder|0ln>|<cwith|19|19|2|2|cell-tborder|0ln>|<cwith|18|18|2|2|cell-lborder|0ln>|<cwith|18|18|2|2|cell-tborder|0ln>|<cwith|22|25|2|2|cell-halign|c>|<cwith|22|25|2|2|cell-valign|c>|<cwith|22|22|2|2|cell-halign|c>|<cwith|22|22|2|2|cell-valign|c>|<cwith|23|23|2|2|cell-halign|c>|<cwith|23|23|2|2|cell-valign|c>|<cwith|24|24|2|2|cell-halign|c>|<cwith|24|24|2|2|cell-valign|c>|<cwith|25|25|2|2|cell-halign|c>|<cwith|25|25|2|2|cell-valign|c>|<cwith|25|25|2|2|cell-halign|c>|<cwith|25|25|2|2|cell-valign|c>|<cwith|22|25|2|2|cell-background|pastel
  blue>|<cwith|22|25|2|2|cell-halign|c>|<cwith|22|25|2|2|cell-valign|c>|<cwith|22|22|2|2|cell-halign|c>|<cwith|22|22|2|2|cell-valign|c>|<cwith|23|23|2|2|cell-halign|c>|<cwith|23|23|2|2|cell-valign|c>|<cwith|24|24|2|2|cell-halign|c>|<cwith|24|24|2|2|cell-valign|c>|<cwith|25|25|2|2|cell-halign|c>|<cwith|25|25|2|2|cell-valign|c>|<cwith|22|25|2|2|cell-background|pastel
  blue>|<cwith|22|22|2|2|cell-bborder|0ln>|<cwith|23|23|2|2|cell-tborder|0ln>|<cwith|22|22|2|2|cell-lborder|0ln>|<cwith|22|22|2|2|cell-rborder|0ln>|<cwith|22|22|2|2|cell-tborder|0ln>|<cwith|26|29|2|2|cell-halign|c>|<cwith|26|29|2|2|cell-valign|c>|<cwith|26|26|2|2|cell-halign|c>|<cwith|26|26|2|2|cell-valign|c>|<cwith|27|27|2|2|cell-halign|c>|<cwith|27|27|2|2|cell-valign|c>|<cwith|28|28|2|2|cell-halign|c>|<cwith|28|28|2|2|cell-valign|c>|<cwith|29|29|2|2|cell-halign|c>|<cwith|29|29|2|2|cell-valign|c>|<cwith|29|29|2|2|cell-halign|c>|<cwith|29|29|2|2|cell-valign|c>|<cwith|26|29|2|2|cell-background|pastel
  blue>|<cwith|26|29|2|2|cell-halign|c>|<cwith|26|29|2|2|cell-valign|c>|<cwith|26|26|2|2|cell-halign|c>|<cwith|26|26|2|2|cell-valign|c>|<cwith|27|27|2|2|cell-halign|c>|<cwith|27|27|2|2|cell-valign|c>|<cwith|28|28|2|2|cell-halign|c>|<cwith|28|28|2|2|cell-valign|c>|<cwith|29|29|2|2|cell-halign|c>|<cwith|29|29|2|2|cell-valign|c>|<cwith|26|29|2|2|cell-background|pastel
  blue>|<cwith|26|26|2|2|cell-bborder|0ln>|<cwith|27|27|2|2|cell-tborder|0ln>|<cwith|26|26|2|2|cell-lborder|0ln>|<cwith|26|26|2|2|cell-rborder|0ln>|<cwith|26|26|2|2|cell-tborder|0ln>|<cwith|30|33|2|2|cell-halign|c>|<cwith|30|33|2|2|cell-valign|c>|<cwith|30|30|2|2|cell-halign|c>|<cwith|30|30|2|2|cell-valign|c>|<cwith|31|31|2|2|cell-halign|c>|<cwith|31|31|2|2|cell-valign|c>|<cwith|32|32|2|2|cell-halign|c>|<cwith|32|32|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|30|33|2|2|cell-background|pastel
  blue>|<cwith|30|33|2|2|cell-halign|c>|<cwith|30|33|2|2|cell-valign|c>|<cwith|30|30|2|2|cell-halign|c>|<cwith|30|30|2|2|cell-valign|c>|<cwith|31|31|2|2|cell-halign|c>|<cwith|31|31|2|2|cell-valign|c>|<cwith|32|32|2|2|cell-halign|c>|<cwith|32|32|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|30|33|2|2|cell-background|pastel
  blue>|<cwith|30|30|2|2|cell-bborder|0ln>|<cwith|31|31|2|2|cell-tborder|0ln>|<cwith|30|30|2|2|cell-lborder|0ln>|<cwith|30|30|2|2|cell-rborder|0ln>|<cwith|30|30|2|2|cell-tborder|0ln>|<cwith|2|17|3|3|cell-halign|c>|<cwith|2|17|3|3|cell-valign|c>|<cwith|2|17|3|3|cell-background|pastel
  blue>|<cwith|2|2|3|3|cell-tborder|1ln>|<cwith|5|6|3|3|cell-lborder|0ln>|<cwith|5|5|3|3|cell-lborder|0ln>|<cwith|18|33|3|3|cell-halign|c>|<cwith|18|33|3|3|cell-valign|c>|<cwith|18|33|3|3|cell-background|pastel
  blue>|<cwith|21|22|3|3|cell-lborder|0ln>|<cwith|21|21|3|3|cell-lborder|0ln>|<cwith|18|18|3|3|cell-tborder|0ln>|<cwith|17|17|3|3|cell-bborder|0ln>|<cwith|18|18|3|3|cell-bborder|0ln>|<cwith|19|19|3|3|cell-tborder|0ln>|<cwith|18|18|3|3|cell-lborder|0ln>|<cwith|18|18|2|2|cell-rborder|0ln>|<cwith|18|18|3|3|cell-rborder|0ln>|<cwith|18|18|4|4|cell-lborder|0ln>|<cwith|4|4|9|12|cell-halign|c>|<cwith|4|4|9|12|cell-valign|c>|<cwith|4|4|9|12|cell-background|pastel
  green>|<cwith|4|4|12|12|cell-rborder|1ln>|<cwith|5|5|9|12|cell-halign|c>|<cwith|5|5|9|12|cell-valign|c>|<cwith|5|5|9|12|cell-background|pastel
  green>|<cwith|5|5|12|12|cell-rborder|1ln>|<cwith|7|9|9|12|cell-halign|c>|<cwith|7|9|9|12|cell-valign|c>|<cwith|7|9|9|12|cell-background|pastel
  green>|<cwith|7|9|12|12|cell-rborder|1ln>|<cwith|7|7|9|11|cell-halign|c>|<cwith|7|7|9|11|cell-valign|c>|<cwith|7|7|9|11|cell-background|pastel
  green>|<cwith|8|8|9|11|cell-halign|c>|<cwith|8|8|9|11|cell-valign|c>|<cwith|8|8|9|11|cell-background|pastel
  green>|<cwith|9|9|9|11|cell-halign|c>|<cwith|9|9|9|11|cell-valign|c>|<cwith|9|9|9|11|cell-background|pastel
  green>|<cwith|10|10|9|12|cell-halign|c>|<cwith|10|10|9|12|cell-valign|c>|<cwith|10|10|9|12|cell-background|pastel
  green>|<cwith|10|10|12|12|cell-rborder|1ln>|<cwith|11|13|9|12|cell-halign|c>|<cwith|11|13|9|12|cell-valign|c>|<cwith|11|13|9|12|cell-background|pastel
  green>|<cwith|11|13|12|12|cell-rborder|1ln>|<cwith|11|11|9|11|cell-halign|c>|<cwith|11|11|9|11|cell-valign|c>|<cwith|11|11|9|11|cell-background|pastel
  green>|<cwith|12|12|9|11|cell-halign|c>|<cwith|12|12|9|11|cell-valign|c>|<cwith|12|12|9|11|cell-background|pastel
  green>|<cwith|13|13|9|11|cell-halign|c>|<cwith|13|13|9|11|cell-valign|c>|<cwith|13|13|9|11|cell-background|pastel
  green>|<cwith|14|17|9|12|cell-halign|c>|<cwith|14|17|9|12|cell-valign|c>|<cwith|14|17|9|12|cell-background|pastel
  green>|<cwith|14|17|12|12|cell-rborder|1ln>|<cwith|16|16|9|11|cell-halign|c>|<cwith|16|16|9|11|cell-valign|c>|<cwith|16|16|9|11|cell-background|pastel
  green>|<cwith|17|17|9|11|cell-halign|c>|<cwith|17|17|9|11|cell-valign|c>|<cwith|17|17|9|11|cell-background|pastel
  green>|<cwith|18|18|9|12|cell-halign|c>|<cwith|18|18|9|12|cell-valign|c>|<cwith|18|18|9|12|cell-background|pastel
  green>|<cwith|18|18|12|12|cell-rborder|1ln>|<cwith|18|18|9|12|cell-halign|c>|<cwith|18|18|9|12|cell-valign|c>|<cwith|18|18|9|12|cell-background|pastel
  green>|<cwith|18|18|12|12|cell-rborder|1ln>|<cwith|19|21|9|12|cell-halign|c>|<cwith|19|21|9|12|cell-valign|c>|<cwith|19|21|9|12|cell-background|pastel
  green>|<cwith|19|21|12|12|cell-rborder|1ln>|<cwith|19|21|9|12|cell-halign|c>|<cwith|19|21|9|12|cell-valign|c>|<cwith|19|21|9|12|cell-background|pastel
  green>|<cwith|19|21|12|12|cell-rborder|1ln>|<cwith|19|19|9|11|cell-halign|c>|<cwith|19|19|9|11|cell-valign|c>|<cwith|19|19|9|11|cell-background|pastel
  green>|<cwith|20|20|9|11|cell-halign|c>|<cwith|20|20|9|11|cell-valign|c>|<cwith|20|20|9|11|cell-background|pastel
  green>|<cwith|21|21|9|11|cell-halign|c>|<cwith|21|21|9|11|cell-valign|c>|<cwith|21|21|9|11|cell-background|pastel
  green>|<cwith|22|25|9|12|cell-halign|c>|<cwith|22|25|9|12|cell-valign|c>|<cwith|22|25|9|12|cell-background|pastel
  green>|<cwith|22|25|12|12|cell-rborder|1ln>|<cwith|22|25|9|12|cell-halign|c>|<cwith|22|25|9|12|cell-valign|c>|<cwith|22|25|9|12|cell-background|pastel
  green>|<cwith|22|25|12|12|cell-rborder|1ln>|<cwith|24|24|9|11|cell-halign|c>|<cwith|24|24|9|11|cell-valign|c>|<cwith|24|24|9|11|cell-background|pastel
  green>|<cwith|25|25|9|11|cell-halign|c>|<cwith|25|25|9|11|cell-valign|c>|<cwith|25|25|9|11|cell-background|pastel
  green>|<cwith|26|29|9|12|cell-halign|c>|<cwith|26|29|9|12|cell-valign|c>|<cwith|26|29|9|12|cell-background|pastel
  green>|<cwith|26|29|12|12|cell-rborder|1ln>|<cwith|26|26|9|12|cell-halign|c>|<cwith|26|26|9|12|cell-valign|c>|<cwith|26|26|9|12|cell-background|pastel
  green>|<cwith|26|26|12|12|cell-rborder|1ln>|<cwith|26|26|9|12|cell-halign|c>|<cwith|26|26|9|12|cell-valign|c>|<cwith|26|26|9|12|cell-background|pastel
  green>|<cwith|26|26|12|12|cell-rborder|1ln>|<cwith|27|29|9|12|cell-halign|c>|<cwith|27|29|9|12|cell-valign|c>|<cwith|27|29|9|12|cell-background|pastel
  green>|<cwith|27|29|12|12|cell-rborder|1ln>|<cwith|27|29|9|12|cell-halign|c>|<cwith|27|29|9|12|cell-valign|c>|<cwith|27|29|9|12|cell-background|pastel
  green>|<cwith|27|29|12|12|cell-rborder|1ln>|<cwith|27|27|9|11|cell-halign|c>|<cwith|27|27|9|11|cell-valign|c>|<cwith|27|27|9|11|cell-background|pastel
  green>|<cwith|28|28|9|11|cell-halign|c>|<cwith|28|28|9|11|cell-valign|c>|<cwith|28|28|9|11|cell-background|pastel
  green>|<cwith|29|29|9|11|cell-halign|c>|<cwith|29|29|9|11|cell-valign|c>|<cwith|29|29|9|11|cell-background|pastel
  green>|<cwith|30|33|9|12|cell-halign|c>|<cwith|30|33|9|12|cell-valign|c>|<cwith|30|33|9|12|cell-background|pastel
  green>|<cwith|30|33|12|12|cell-rborder|1ln>|<cwith|30|33|9|12|cell-halign|c>|<cwith|30|33|9|12|cell-valign|c>|<cwith|30|33|9|12|cell-background|pastel
  green>|<cwith|30|33|12|12|cell-rborder|1ln>|<cwith|30|33|9|12|cell-halign|c>|<cwith|30|33|9|12|cell-valign|c>|<cwith|30|33|9|12|cell-background|pastel
  green>|<cwith|30|33|12|12|cell-rborder|1ln>|<cwith|32|32|9|11|cell-halign|c>|<cwith|32|32|9|11|cell-valign|c>|<cwith|32|32|9|11|cell-background|pastel
  green>|<cwith|33|33|9|11|cell-halign|c>|<cwith|33|33|9|11|cell-valign|c>|<cwith|33|33|9|11|cell-background|pastel
  green>|<table|<row|<cell|a<rsub|2>>|<cell|a<rsub|1>>|<cell|a<rsub|0>>|<cell|R<rsub|0>>|<cell|R<rsub|1>>|<cell|R<rsub|2>>|<cell|R<rsub|3>>|<cell|R<rsub|VIP>>|<cell|UP>|<cell|STOP>|<cell|DOWN>|<cell|HEX>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|<shell|0x0>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|<shell|0x4>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|<shell|0x4>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|<shell|0x4>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|<shell|0x2>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x6>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x6>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<shell|0x6>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|<shell|0x5>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|<shell|0x5>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<shell|0x5>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x3>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|<shell|0x7>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|<shell|0x7>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|<shell|0x7>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|<shell|0x5>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|<shell|0x5>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|<shell|0x5>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x3>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|<shell|0x7>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|<shell|0x7>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|<shell|0x7>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|<shell|0x5>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|<shell|0x5>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|<shell|0x5>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x3>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|<shell|0x7>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|<shell|0x7>>>|<row|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|<shell|0x7>>>>>>>>>>>>|Comparator
  truth table for <math|a<rsub|2>=0,a<rsub|1>=1,a<rsub|0>=0>>

  The fourth truth table represents the 32 possible requests <math|R<rsub|x>>
  in the case where <math|a<rsub|2>=0,a<rsub|1>=1,a<rsub|0>=1> (so we are in
  the case where the arrival signal <math|A<rsub|3>> is activated):

  <big-table|<tiny|<tabular|<tformat|<table|<row|<cell|<math|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|19|33|5|8|cell-halign|c>|<cwith|19|33|5|8|cell-valign|c>|<cwith|19|26|4|4|cell-halign|c>|<cwith|19|26|4|4|cell-valign|c>|<cwith|19|26|4|4|cell-halign|c>|<cwith|19|26|4|4|cell-valign|c>|<cwith|27|34|4|4|cell-halign|c>|<cwith|27|34|4|4|cell-valign|c>|<cwith|27|34|4|4|cell-halign|c>|<cwith|27|34|4|4|cell-valign|c>|<cwith|2|2|1|3|cell-halign|c>|<cwith|2|2|1|3|cell-valign|c>|<cwith|3|3|1|3|cell-halign|c>|<cwith|3|3|1|3|cell-valign|c>|<cwith|4|4|1|3|cell-halign|c>|<cwith|4|4|1|3|cell-valign|c>|<cwith|5|5|1|3|cell-halign|c>|<cwith|5|5|1|3|cell-valign|c>|<cwith|6|6|1|3|cell-halign|c>|<cwith|6|6|1|3|cell-valign|c>|<cwith|7|7|1|3|cell-halign|c>|<cwith|7|7|1|3|cell-valign|c>|<cwith|8|8|1|3|cell-halign|c>|<cwith|8|8|1|3|cell-valign|c>|<cwith|9|15|1|3|cell-halign|c>|<cwith|9|15|1|3|cell-valign|c>|<cwith|9|9|1|3|cell-halign|c>|<cwith|9|9|1|3|cell-valign|c>|<cwith|10|10|1|3|cell-halign|c>|<cwith|10|10|1|3|cell-valign|c>|<cwith|11|11|1|3|cell-halign|c>|<cwith|11|11|1|3|cell-valign|c>|<cwith|12|12|1|3|cell-halign|c>|<cwith|12|12|1|3|cell-valign|c>|<cwith|13|13|1|3|cell-halign|c>|<cwith|13|13|1|3|cell-valign|c>|<cwith|14|14|1|3|cell-halign|c>|<cwith|14|14|1|3|cell-valign|c>|<cwith|15|15|1|3|cell-halign|c>|<cwith|15|15|1|3|cell-valign|c>|<cwith|16|22|1|3|cell-halign|c>|<cwith|16|22|1|3|cell-valign|c>|<cwith|16|16|1|3|cell-halign|c>|<cwith|16|16|1|3|cell-valign|c>|<cwith|17|17|1|3|cell-halign|c>|<cwith|17|17|1|3|cell-valign|c>|<cwith|18|18|1|3|cell-halign|c>|<cwith|18|18|1|3|cell-valign|c>|<cwith|19|19|1|3|cell-halign|c>|<cwith|19|19|1|3|cell-valign|c>|<cwith|20|20|1|3|cell-halign|c>|<cwith|20|20|1|3|cell-valign|c>|<cwith|21|21|1|3|cell-halign|c>|<cwith|21|21|1|3|cell-valign|c>|<cwith|22|22|1|3|cell-halign|c>|<cwith|22|22|1|3|cell-valign|c>|<cwith|23|29|1|3|cell-halign|c>|<cwith|23|29|1|3|cell-valign|c>|<cwith|23|23|1|3|cell-halign|c>|<cwith|23|23|1|3|cell-valign|c>|<cwith|24|24|1|3|cell-halign|c>|<cwith|24|24|1|3|cell-valign|c>|<cwith|25|25|1|3|cell-halign|c>|<cwith|25|25|1|3|cell-valign|c>|<cwith|26|26|1|3|cell-halign|c>|<cwith|26|26|1|3|cell-valign|c>|<cwith|27|27|1|3|cell-halign|c>|<cwith|27|27|1|3|cell-valign|c>|<cwith|28|28|1|3|cell-halign|c>|<cwith|28|28|1|3|cell-valign|c>|<cwith|29|29|1|3|cell-halign|c>|<cwith|29|29|1|3|cell-valign|c>|<cwith|30|32|1|3|cell-halign|c>|<cwith|30|32|1|3|cell-valign|c>|<cwith|30|32|1|3|cell-halign|c>|<cwith|30|32|1|3|cell-valign|c>|<cwith|30|30|1|3|cell-halign|c>|<cwith|30|30|1|3|cell-valign|c>|<cwith|31|31|1|3|cell-halign|c>|<cwith|31|31|1|3|cell-valign|c>|<cwith|32|32|1|3|cell-halign|c>|<cwith|32|32|1|3|cell-valign|c>|<cwith|33|33|1|3|cell-halign|c>|<cwith|33|33|1|3|cell-valign|c>|<cwith|33|33|1|3|cell-halign|c>|<cwith|33|33|1|3|cell-valign|c>|<cwith|33|33|1|3|cell-halign|c>|<cwith|33|33|1|3|cell-valign|c>|<cwith|33|33|1|3|cell-halign|c>|<cwith|33|33|1|3|cell-valign|c>|<cwith|1|-1|9|12|cell-background|pastel
  green>|<cwith|1|-1|1|8|cell-background|pastel
  blue>|<cwith|33|33|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|12|12|cell-rborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|12|12|cell-rborder|1ln>|<cwith|6|9|3|3|cell-halign|c>|<cwith|6|9|3|3|cell-valign|c>|<cwith|6|6|3|3|cell-halign|c>|<cwith|6|6|3|3|cell-valign|c>|<cwith|7|7|3|3|cell-halign|c>|<cwith|7|7|3|3|cell-valign|c>|<cwith|8|8|3|3|cell-halign|c>|<cwith|8|8|3|3|cell-valign|c>|<cwith|9|9|3|3|cell-halign|c>|<cwith|9|9|3|3|cell-valign|c>|<cwith|6|9|3|3|cell-background|pastel
  blue>|<cwith|6|6|3|3|cell-bborder|0ln>|<cwith|7|7|3|3|cell-tborder|0ln>|<cwith|5|6|3|3|cell-lborder|0ln>|<cwith|5|6|2|2|cell-rborder|0ln>|<cwith|5|6|3|3|cell-rborder|0ln>|<cwith|5|6|4|4|cell-lborder|0ln>|<cwith|5|5|3|3|cell-tborder|0ln>|<cwith|4|4|3|3|cell-bborder|0ln>|<cwith|5|5|3|3|cell-bborder|0ln>|<cwith|6|6|3|3|cell-tborder|0ln>|<cwith|5|5|3|3|cell-lborder|0ln>|<cwith|5|5|2|2|cell-rborder|0ln>|<cwith|5|5|3|3|cell-rborder|0ln>|<cwith|5|5|4|4|cell-lborder|0ln>|<cwith|10|13|3|3|cell-halign|c>|<cwith|10|13|3|3|cell-valign|c>|<cwith|10|10|3|3|cell-halign|c>|<cwith|10|10|3|3|cell-valign|c>|<cwith|11|11|3|3|cell-halign|c>|<cwith|11|11|3|3|cell-valign|c>|<cwith|12|12|3|3|cell-halign|c>|<cwith|12|12|3|3|cell-valign|c>|<cwith|13|13|3|3|cell-halign|c>|<cwith|13|13|3|3|cell-valign|c>|<cwith|13|13|3|3|cell-halign|c>|<cwith|13|13|3|3|cell-valign|c>|<cwith|10|13|3|3|cell-background|pastel
  blue>|<cwith|10|13|3|3|cell-halign|c>|<cwith|10|13|3|3|cell-valign|c>|<cwith|10|10|3|3|cell-halign|c>|<cwith|10|10|3|3|cell-valign|c>|<cwith|11|11|3|3|cell-halign|c>|<cwith|11|11|3|3|cell-valign|c>|<cwith|12|12|3|3|cell-halign|c>|<cwith|12|12|3|3|cell-valign|c>|<cwith|13|13|3|3|cell-halign|c>|<cwith|13|13|3|3|cell-valign|c>|<cwith|10|13|3|3|cell-background|pastel
  blue>|<cwith|10|10|3|3|cell-bborder|0ln>|<cwith|11|11|3|3|cell-tborder|0ln>|<cwith|10|10|3|3|cell-lborder|0ln>|<cwith|10|10|3|3|cell-rborder|0ln>|<cwith|10|10|3|3|cell-tborder|0ln>|<cwith|14|17|3|3|cell-halign|c>|<cwith|14|17|3|3|cell-valign|c>|<cwith|14|14|3|3|cell-halign|c>|<cwith|14|14|3|3|cell-valign|c>|<cwith|15|15|3|3|cell-halign|c>|<cwith|15|15|3|3|cell-valign|c>|<cwith|16|16|3|3|cell-halign|c>|<cwith|16|16|3|3|cell-valign|c>|<cwith|17|17|3|3|cell-halign|c>|<cwith|17|17|3|3|cell-valign|c>|<cwith|17|17|3|3|cell-halign|c>|<cwith|17|17|3|3|cell-valign|c>|<cwith|14|17|3|3|cell-background|pastel
  blue>|<cwith|14|17|3|3|cell-halign|c>|<cwith|14|17|3|3|cell-valign|c>|<cwith|14|14|3|3|cell-halign|c>|<cwith|14|14|3|3|cell-valign|c>|<cwith|15|15|3|3|cell-halign|c>|<cwith|15|15|3|3|cell-valign|c>|<cwith|16|16|3|3|cell-halign|c>|<cwith|16|16|3|3|cell-valign|c>|<cwith|17|17|3|3|cell-halign|c>|<cwith|17|17|3|3|cell-valign|c>|<cwith|14|17|3|3|cell-background|pastel
  blue>|<cwith|14|14|3|3|cell-bborder|0ln>|<cwith|15|15|3|3|cell-tborder|0ln>|<cwith|14|14|3|3|cell-lborder|0ln>|<cwith|14|14|3|3|cell-rborder|0ln>|<cwith|14|14|3|3|cell-tborder|0ln>|<cwith|18|21|3|3|cell-halign|c>|<cwith|18|21|3|3|cell-valign|c>|<cwith|18|18|3|3|cell-halign|c>|<cwith|18|18|3|3|cell-valign|c>|<cwith|19|19|3|3|cell-halign|c>|<cwith|19|19|3|3|cell-valign|c>|<cwith|20|20|3|3|cell-halign|c>|<cwith|20|20|3|3|cell-valign|c>|<cwith|21|21|3|3|cell-halign|c>|<cwith|21|21|3|3|cell-valign|c>|<cwith|21|21|3|3|cell-halign|c>|<cwith|21|21|3|3|cell-valign|c>|<cwith|18|21|3|3|cell-background|pastel
  blue>|<cwith|18|21|3|3|cell-halign|c>|<cwith|18|21|3|3|cell-valign|c>|<cwith|18|18|3|3|cell-halign|c>|<cwith|18|18|3|3|cell-valign|c>|<cwith|19|19|3|3|cell-halign|c>|<cwith|19|19|3|3|cell-valign|c>|<cwith|20|20|3|3|cell-halign|c>|<cwith|20|20|3|3|cell-valign|c>|<cwith|21|21|3|3|cell-halign|c>|<cwith|21|21|3|3|cell-valign|c>|<cwith|18|21|3|3|cell-background|pastel
  blue>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|22|3|3|cell-halign|c>|<cwith|22|22|3|3|cell-valign|c>|<cwith|23|23|3|3|cell-halign|c>|<cwith|23|23|3|3|cell-valign|c>|<cwith|24|24|3|3|cell-halign|c>|<cwith|24|24|3|3|cell-valign|c>|<cwith|25|25|3|3|cell-halign|c>|<cwith|25|25|3|3|cell-valign|c>|<cwith|25|25|3|3|cell-halign|c>|<cwith|25|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-background|pastel
  blue>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|22|3|3|cell-halign|c>|<cwith|22|22|3|3|cell-valign|c>|<cwith|23|23|3|3|cell-halign|c>|<cwith|23|23|3|3|cell-valign|c>|<cwith|24|24|3|3|cell-halign|c>|<cwith|24|24|3|3|cell-valign|c>|<cwith|25|25|3|3|cell-halign|c>|<cwith|25|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-background|pastel
  blue>|<cwith|22|22|3|3|cell-bborder|0ln>|<cwith|23|23|3|3|cell-tborder|0ln>|<cwith|22|22|3|3|cell-lborder|0ln>|<cwith|22|22|3|3|cell-rborder|0ln>|<cwith|22|22|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|26|3|3|cell-halign|c>|<cwith|26|26|3|3|cell-valign|c>|<cwith|27|27|3|3|cell-halign|c>|<cwith|27|27|3|3|cell-valign|c>|<cwith|28|28|3|3|cell-halign|c>|<cwith|28|28|3|3|cell-valign|c>|<cwith|29|29|3|3|cell-halign|c>|<cwith|29|29|3|3|cell-valign|c>|<cwith|29|29|3|3|cell-halign|c>|<cwith|29|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-background|pastel
  blue>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|26|3|3|cell-halign|c>|<cwith|26|26|3|3|cell-valign|c>|<cwith|27|27|3|3|cell-halign|c>|<cwith|27|27|3|3|cell-valign|c>|<cwith|28|28|3|3|cell-halign|c>|<cwith|28|28|3|3|cell-valign|c>|<cwith|29|29|3|3|cell-halign|c>|<cwith|29|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-background|pastel
  blue>|<cwith|26|26|3|3|cell-bborder|0ln>|<cwith|27|27|3|3|cell-tborder|0ln>|<cwith|26|26|3|3|cell-lborder|0ln>|<cwith|26|26|3|3|cell-rborder|0ln>|<cwith|26|26|3|3|cell-tborder|0ln>|<cwith|30|33|3|3|cell-halign|c>|<cwith|30|33|3|3|cell-valign|c>|<cwith|30|30|3|3|cell-halign|c>|<cwith|30|30|3|3|cell-valign|c>|<cwith|31|31|3|3|cell-halign|c>|<cwith|31|31|3|3|cell-valign|c>|<cwith|32|32|3|3|cell-halign|c>|<cwith|32|32|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|30|33|3|3|cell-background|pastel
  blue>|<cwith|30|33|3|3|cell-halign|c>|<cwith|30|33|3|3|cell-valign|c>|<cwith|30|30|3|3|cell-halign|c>|<cwith|30|30|3|3|cell-valign|c>|<cwith|31|31|3|3|cell-halign|c>|<cwith|31|31|3|3|cell-valign|c>|<cwith|32|32|3|3|cell-halign|c>|<cwith|32|32|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|30|33|3|3|cell-background|pastel
  blue>|<cwith|30|30|3|3|cell-bborder|0ln>|<cwith|31|31|3|3|cell-tborder|0ln>|<cwith|30|30|3|3|cell-lborder|0ln>|<cwith|30|30|3|3|cell-rborder|0ln>|<cwith|30|30|3|3|cell-tborder|0ln>|<cwith|2|33|2|2|cell-halign|c>|<cwith|2|33|2|2|cell-valign|c>|<cwith|2|2|2|2|cell-halign|c>|<cwith|2|2|2|2|cell-valign|c>|<cwith|3|3|2|2|cell-halign|c>|<cwith|3|3|2|2|cell-valign|c>|<cwith|4|4|2|2|cell-halign|c>|<cwith|4|4|2|2|cell-valign|c>|<cwith|5|5|2|2|cell-halign|c>|<cwith|5|5|2|2|cell-valign|c>|<cwith|6|6|2|2|cell-halign|c>|<cwith|6|6|2|2|cell-valign|c>|<cwith|7|7|2|2|cell-halign|c>|<cwith|7|7|2|2|cell-valign|c>|<cwith|8|8|2|2|cell-halign|c>|<cwith|8|8|2|2|cell-valign|c>|<cwith|9|15|2|2|cell-halign|c>|<cwith|9|15|2|2|cell-valign|c>|<cwith|9|9|2|2|cell-halign|c>|<cwith|9|9|2|2|cell-valign|c>|<cwith|10|10|2|2|cell-halign|c>|<cwith|10|10|2|2|cell-valign|c>|<cwith|11|11|2|2|cell-halign|c>|<cwith|11|11|2|2|cell-valign|c>|<cwith|12|12|2|2|cell-halign|c>|<cwith|12|12|2|2|cell-valign|c>|<cwith|13|13|2|2|cell-halign|c>|<cwith|13|13|2|2|cell-valign|c>|<cwith|14|14|2|2|cell-halign|c>|<cwith|14|14|2|2|cell-valign|c>|<cwith|15|15|2|2|cell-halign|c>|<cwith|15|15|2|2|cell-valign|c>|<cwith|16|22|2|2|cell-halign|c>|<cwith|16|22|2|2|cell-valign|c>|<cwith|16|16|2|2|cell-halign|c>|<cwith|16|16|2|2|cell-valign|c>|<cwith|17|17|2|2|cell-halign|c>|<cwith|17|17|2|2|cell-valign|c>|<cwith|18|18|2|2|cell-halign|c>|<cwith|18|18|2|2|cell-valign|c>|<cwith|19|19|2|2|cell-halign|c>|<cwith|19|19|2|2|cell-valign|c>|<cwith|20|20|2|2|cell-halign|c>|<cwith|20|20|2|2|cell-valign|c>|<cwith|21|21|2|2|cell-halign|c>|<cwith|21|21|2|2|cell-valign|c>|<cwith|22|22|2|2|cell-halign|c>|<cwith|22|22|2|2|cell-valign|c>|<cwith|23|29|2|2|cell-halign|c>|<cwith|23|29|2|2|cell-valign|c>|<cwith|23|23|2|2|cell-halign|c>|<cwith|23|23|2|2|cell-valign|c>|<cwith|24|24|2|2|cell-halign|c>|<cwith|24|24|2|2|cell-valign|c>|<cwith|25|25|2|2|cell-halign|c>|<cwith|25|25|2|2|cell-valign|c>|<cwith|26|26|2|2|cell-halign|c>|<cwith|26|26|2|2|cell-valign|c>|<cwith|27|27|2|2|cell-halign|c>|<cwith|27|27|2|2|cell-valign|c>|<cwith|28|28|2|2|cell-halign|c>|<cwith|28|28|2|2|cell-valign|c>|<cwith|29|29|2|2|cell-halign|c>|<cwith|29|29|2|2|cell-valign|c>|<cwith|30|32|2|2|cell-halign|c>|<cwith|30|32|2|2|cell-valign|c>|<cwith|30|32|2|2|cell-halign|c>|<cwith|30|32|2|2|cell-valign|c>|<cwith|30|30|2|2|cell-halign|c>|<cwith|30|30|2|2|cell-valign|c>|<cwith|31|31|2|2|cell-halign|c>|<cwith|31|31|2|2|cell-valign|c>|<cwith|32|32|2|2|cell-halign|c>|<cwith|32|32|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|2|33|2|2|cell-background|pastel
  blue>|<cwith|33|33|2|2|cell-bborder|1ln>|<cwith|2|2|2|2|cell-tborder|1ln>|<cwith|6|9|2|2|cell-halign|c>|<cwith|6|9|2|2|cell-valign|c>|<cwith|6|6|2|2|cell-halign|c>|<cwith|6|6|2|2|cell-valign|c>|<cwith|7|7|2|2|cell-halign|c>|<cwith|7|7|2|2|cell-valign|c>|<cwith|8|8|2|2|cell-halign|c>|<cwith|8|8|2|2|cell-valign|c>|<cwith|9|9|2|2|cell-halign|c>|<cwith|9|9|2|2|cell-valign|c>|<cwith|6|9|2|2|cell-background|pastel
  blue>|<cwith|6|6|2|2|cell-bborder|0ln>|<cwith|7|7|2|2|cell-tborder|0ln>|<cwith|5|6|2|2|cell-lborder|0ln>|<cwith|5|6|2|2|cell-rborder|0ln>|<cwith|5|5|2|2|cell-tborder|0ln>|<cwith|4|4|2|2|cell-bborder|0ln>|<cwith|5|5|2|2|cell-bborder|0ln>|<cwith|6|6|2|2|cell-tborder|0ln>|<cwith|5|5|2|2|cell-lborder|0ln>|<cwith|5|5|2|2|cell-rborder|0ln>|<cwith|10|13|2|2|cell-halign|c>|<cwith|10|13|2|2|cell-valign|c>|<cwith|10|10|2|2|cell-halign|c>|<cwith|10|10|2|2|cell-valign|c>|<cwith|11|11|2|2|cell-halign|c>|<cwith|11|11|2|2|cell-valign|c>|<cwith|12|12|2|2|cell-halign|c>|<cwith|12|12|2|2|cell-valign|c>|<cwith|13|13|2|2|cell-halign|c>|<cwith|13|13|2|2|cell-valign|c>|<cwith|13|13|2|2|cell-halign|c>|<cwith|13|13|2|2|cell-valign|c>|<cwith|10|13|2|2|cell-background|pastel
  blue>|<cwith|10|13|2|2|cell-halign|c>|<cwith|10|13|2|2|cell-valign|c>|<cwith|10|10|2|2|cell-halign|c>|<cwith|10|10|2|2|cell-valign|c>|<cwith|11|11|2|2|cell-halign|c>|<cwith|11|11|2|2|cell-valign|c>|<cwith|12|12|2|2|cell-halign|c>|<cwith|12|12|2|2|cell-valign|c>|<cwith|13|13|2|2|cell-halign|c>|<cwith|13|13|2|2|cell-valign|c>|<cwith|10|13|2|2|cell-background|pastel
  blue>|<cwith|10|10|2|2|cell-bborder|0ln>|<cwith|11|11|2|2|cell-tborder|0ln>|<cwith|10|10|2|2|cell-lborder|0ln>|<cwith|10|10|2|2|cell-rborder|0ln>|<cwith|10|10|2|2|cell-tborder|0ln>|<cwith|14|17|2|2|cell-halign|c>|<cwith|14|17|2|2|cell-valign|c>|<cwith|14|14|2|2|cell-halign|c>|<cwith|14|14|2|2|cell-valign|c>|<cwith|15|15|2|2|cell-halign|c>|<cwith|15|15|2|2|cell-valign|c>|<cwith|16|16|2|2|cell-halign|c>|<cwith|16|16|2|2|cell-valign|c>|<cwith|17|17|2|2|cell-halign|c>|<cwith|17|17|2|2|cell-valign|c>|<cwith|17|17|2|2|cell-halign|c>|<cwith|17|17|2|2|cell-valign|c>|<cwith|14|17|2|2|cell-background|pastel
  blue>|<cwith|14|17|2|2|cell-halign|c>|<cwith|14|17|2|2|cell-valign|c>|<cwith|14|14|2|2|cell-halign|c>|<cwith|14|14|2|2|cell-valign|c>|<cwith|15|15|2|2|cell-halign|c>|<cwith|15|15|2|2|cell-valign|c>|<cwith|16|16|2|2|cell-halign|c>|<cwith|16|16|2|2|cell-valign|c>|<cwith|17|17|2|2|cell-halign|c>|<cwith|17|17|2|2|cell-valign|c>|<cwith|14|17|2|2|cell-background|pastel
  blue>|<cwith|14|14|2|2|cell-bborder|0ln>|<cwith|15|15|2|2|cell-tborder|0ln>|<cwith|14|14|2|2|cell-lborder|0ln>|<cwith|14|14|2|2|cell-rborder|0ln>|<cwith|14|14|2|2|cell-tborder|0ln>|<cwith|18|21|2|2|cell-halign|c>|<cwith|18|21|2|2|cell-valign|c>|<cwith|18|18|2|2|cell-halign|c>|<cwith|18|18|2|2|cell-valign|c>|<cwith|19|19|2|2|cell-halign|c>|<cwith|19|19|2|2|cell-valign|c>|<cwith|20|20|2|2|cell-halign|c>|<cwith|20|20|2|2|cell-valign|c>|<cwith|21|21|2|2|cell-halign|c>|<cwith|21|21|2|2|cell-valign|c>|<cwith|21|21|2|2|cell-halign|c>|<cwith|21|21|2|2|cell-valign|c>|<cwith|18|21|2|2|cell-background|pastel
  blue>|<cwith|18|21|2|2|cell-halign|c>|<cwith|18|21|2|2|cell-valign|c>|<cwith|18|18|2|2|cell-halign|c>|<cwith|18|18|2|2|cell-valign|c>|<cwith|19|19|2|2|cell-halign|c>|<cwith|19|19|2|2|cell-valign|c>|<cwith|20|20|2|2|cell-halign|c>|<cwith|20|20|2|2|cell-valign|c>|<cwith|21|21|2|2|cell-halign|c>|<cwith|21|21|2|2|cell-valign|c>|<cwith|18|21|2|2|cell-background|pastel
  blue>|<cwith|18|18|2|2|cell-bborder|0ln>|<cwith|19|19|2|2|cell-tborder|0ln>|<cwith|18|18|2|2|cell-lborder|0ln>|<cwith|18|18|2|2|cell-tborder|0ln>|<cwith|22|25|2|2|cell-halign|c>|<cwith|22|25|2|2|cell-valign|c>|<cwith|22|22|2|2|cell-halign|c>|<cwith|22|22|2|2|cell-valign|c>|<cwith|23|23|2|2|cell-halign|c>|<cwith|23|23|2|2|cell-valign|c>|<cwith|24|24|2|2|cell-halign|c>|<cwith|24|24|2|2|cell-valign|c>|<cwith|25|25|2|2|cell-halign|c>|<cwith|25|25|2|2|cell-valign|c>|<cwith|25|25|2|2|cell-halign|c>|<cwith|25|25|2|2|cell-valign|c>|<cwith|22|25|2|2|cell-background|pastel
  blue>|<cwith|22|25|2|2|cell-halign|c>|<cwith|22|25|2|2|cell-valign|c>|<cwith|22|22|2|2|cell-halign|c>|<cwith|22|22|2|2|cell-valign|c>|<cwith|23|23|2|2|cell-halign|c>|<cwith|23|23|2|2|cell-valign|c>|<cwith|24|24|2|2|cell-halign|c>|<cwith|24|24|2|2|cell-valign|c>|<cwith|25|25|2|2|cell-halign|c>|<cwith|25|25|2|2|cell-valign|c>|<cwith|22|25|2|2|cell-background|pastel
  blue>|<cwith|22|22|2|2|cell-bborder|0ln>|<cwith|23|23|2|2|cell-tborder|0ln>|<cwith|22|22|2|2|cell-lborder|0ln>|<cwith|22|22|2|2|cell-rborder|0ln>|<cwith|22|22|2|2|cell-tborder|0ln>|<cwith|26|29|2|2|cell-halign|c>|<cwith|26|29|2|2|cell-valign|c>|<cwith|26|26|2|2|cell-halign|c>|<cwith|26|26|2|2|cell-valign|c>|<cwith|27|27|2|2|cell-halign|c>|<cwith|27|27|2|2|cell-valign|c>|<cwith|28|28|2|2|cell-halign|c>|<cwith|28|28|2|2|cell-valign|c>|<cwith|29|29|2|2|cell-halign|c>|<cwith|29|29|2|2|cell-valign|c>|<cwith|29|29|2|2|cell-halign|c>|<cwith|29|29|2|2|cell-valign|c>|<cwith|26|29|2|2|cell-background|pastel
  blue>|<cwith|26|29|2|2|cell-halign|c>|<cwith|26|29|2|2|cell-valign|c>|<cwith|26|26|2|2|cell-halign|c>|<cwith|26|26|2|2|cell-valign|c>|<cwith|27|27|2|2|cell-halign|c>|<cwith|27|27|2|2|cell-valign|c>|<cwith|28|28|2|2|cell-halign|c>|<cwith|28|28|2|2|cell-valign|c>|<cwith|29|29|2|2|cell-halign|c>|<cwith|29|29|2|2|cell-valign|c>|<cwith|26|29|2|2|cell-background|pastel
  blue>|<cwith|26|26|2|2|cell-bborder|0ln>|<cwith|27|27|2|2|cell-tborder|0ln>|<cwith|26|26|2|2|cell-lborder|0ln>|<cwith|26|26|2|2|cell-rborder|0ln>|<cwith|26|26|2|2|cell-tborder|0ln>|<cwith|30|33|2|2|cell-halign|c>|<cwith|30|33|2|2|cell-valign|c>|<cwith|30|30|2|2|cell-halign|c>|<cwith|30|30|2|2|cell-valign|c>|<cwith|31|31|2|2|cell-halign|c>|<cwith|31|31|2|2|cell-valign|c>|<cwith|32|32|2|2|cell-halign|c>|<cwith|32|32|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|30|33|2|2|cell-background|pastel
  blue>|<cwith|30|33|2|2|cell-halign|c>|<cwith|30|33|2|2|cell-valign|c>|<cwith|30|30|2|2|cell-halign|c>|<cwith|30|30|2|2|cell-valign|c>|<cwith|31|31|2|2|cell-halign|c>|<cwith|31|31|2|2|cell-valign|c>|<cwith|32|32|2|2|cell-halign|c>|<cwith|32|32|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|30|33|2|2|cell-background|pastel
  blue>|<cwith|30|30|2|2|cell-bborder|0ln>|<cwith|31|31|2|2|cell-tborder|0ln>|<cwith|30|30|2|2|cell-lborder|0ln>|<cwith|30|30|2|2|cell-rborder|0ln>|<cwith|30|30|2|2|cell-tborder|0ln>|<cwith|2|17|3|3|cell-halign|c>|<cwith|2|17|3|3|cell-valign|c>|<cwith|2|17|3|3|cell-background|pastel
  blue>|<cwith|2|2|3|3|cell-tborder|1ln>|<cwith|5|6|3|3|cell-lborder|0ln>|<cwith|5|5|3|3|cell-lborder|0ln>|<cwith|18|33|3|3|cell-halign|c>|<cwith|18|33|3|3|cell-valign|c>|<cwith|18|33|3|3|cell-background|pastel
  blue>|<cwith|21|22|3|3|cell-lborder|0ln>|<cwith|21|21|3|3|cell-lborder|0ln>|<cwith|18|18|3|3|cell-tborder|0ln>|<cwith|17|17|3|3|cell-bborder|0ln>|<cwith|18|18|3|3|cell-bborder|0ln>|<cwith|19|19|3|3|cell-tborder|0ln>|<cwith|18|18|3|3|cell-lborder|0ln>|<cwith|18|18|2|2|cell-rborder|0ln>|<cwith|18|18|3|3|cell-rborder|0ln>|<cwith|18|18|4|4|cell-lborder|0ln>|<cwith|2|33|3|3|cell-halign|c>|<cwith|2|33|3|3|cell-valign|c>|<cwith|2|2|3|3|cell-halign|c>|<cwith|2|2|3|3|cell-valign|c>|<cwith|3|3|3|3|cell-halign|c>|<cwith|3|3|3|3|cell-valign|c>|<cwith|4|4|3|3|cell-halign|c>|<cwith|4|4|3|3|cell-valign|c>|<cwith|5|5|3|3|cell-halign|c>|<cwith|5|5|3|3|cell-valign|c>|<cwith|6|6|3|3|cell-halign|c>|<cwith|6|6|3|3|cell-valign|c>|<cwith|7|7|3|3|cell-halign|c>|<cwith|7|7|3|3|cell-valign|c>|<cwith|8|8|3|3|cell-halign|c>|<cwith|8|8|3|3|cell-valign|c>|<cwith|9|15|3|3|cell-halign|c>|<cwith|9|15|3|3|cell-valign|c>|<cwith|9|9|3|3|cell-halign|c>|<cwith|9|9|3|3|cell-valign|c>|<cwith|10|10|3|3|cell-halign|c>|<cwith|10|10|3|3|cell-valign|c>|<cwith|11|11|3|3|cell-halign|c>|<cwith|11|11|3|3|cell-valign|c>|<cwith|12|12|3|3|cell-halign|c>|<cwith|12|12|3|3|cell-valign|c>|<cwith|13|13|3|3|cell-halign|c>|<cwith|13|13|3|3|cell-valign|c>|<cwith|14|14|3|3|cell-halign|c>|<cwith|14|14|3|3|cell-valign|c>|<cwith|15|15|3|3|cell-halign|c>|<cwith|15|15|3|3|cell-valign|c>|<cwith|16|22|3|3|cell-halign|c>|<cwith|16|22|3|3|cell-valign|c>|<cwith|16|16|3|3|cell-halign|c>|<cwith|16|16|3|3|cell-valign|c>|<cwith|17|17|3|3|cell-halign|c>|<cwith|17|17|3|3|cell-valign|c>|<cwith|18|18|3|3|cell-halign|c>|<cwith|18|18|3|3|cell-valign|c>|<cwith|19|19|3|3|cell-halign|c>|<cwith|19|19|3|3|cell-valign|c>|<cwith|20|20|3|3|cell-halign|c>|<cwith|20|20|3|3|cell-valign|c>|<cwith|21|21|3|3|cell-halign|c>|<cwith|21|21|3|3|cell-valign|c>|<cwith|22|22|3|3|cell-halign|c>|<cwith|22|22|3|3|cell-valign|c>|<cwith|23|29|3|3|cell-halign|c>|<cwith|23|29|3|3|cell-valign|c>|<cwith|23|23|3|3|cell-halign|c>|<cwith|23|23|3|3|cell-valign|c>|<cwith|24|24|3|3|cell-halign|c>|<cwith|24|24|3|3|cell-valign|c>|<cwith|25|25|3|3|cell-halign|c>|<cwith|25|25|3|3|cell-valign|c>|<cwith|26|26|3|3|cell-halign|c>|<cwith|26|26|3|3|cell-valign|c>|<cwith|27|27|3|3|cell-halign|c>|<cwith|27|27|3|3|cell-valign|c>|<cwith|28|28|3|3|cell-halign|c>|<cwith|28|28|3|3|cell-valign|c>|<cwith|29|29|3|3|cell-halign|c>|<cwith|29|29|3|3|cell-valign|c>|<cwith|30|32|3|3|cell-halign|c>|<cwith|30|32|3|3|cell-valign|c>|<cwith|30|32|3|3|cell-halign|c>|<cwith|30|32|3|3|cell-valign|c>|<cwith|30|30|3|3|cell-halign|c>|<cwith|30|30|3|3|cell-valign|c>|<cwith|31|31|3|3|cell-halign|c>|<cwith|31|31|3|3|cell-valign|c>|<cwith|32|32|3|3|cell-halign|c>|<cwith|32|32|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|2|33|3|3|cell-background|pastel
  blue>|<cwith|33|33|3|3|cell-bborder|1ln>|<cwith|2|2|3|3|cell-tborder|1ln>|<cwith|5|6|3|3|cell-rborder|0ln>|<cwith|5|5|3|3|cell-rborder|0ln>|<cwith|2|33|3|3|cell-halign|c>|<cwith|2|33|3|3|cell-valign|c>|<cwith|2|2|3|3|cell-halign|c>|<cwith|2|2|3|3|cell-valign|c>|<cwith|3|3|3|3|cell-halign|c>|<cwith|3|3|3|3|cell-valign|c>|<cwith|4|4|3|3|cell-halign|c>|<cwith|4|4|3|3|cell-valign|c>|<cwith|5|5|3|3|cell-halign|c>|<cwith|5|5|3|3|cell-valign|c>|<cwith|6|6|3|3|cell-halign|c>|<cwith|6|6|3|3|cell-valign|c>|<cwith|7|7|3|3|cell-halign|c>|<cwith|7|7|3|3|cell-valign|c>|<cwith|8|8|3|3|cell-halign|c>|<cwith|8|8|3|3|cell-valign|c>|<cwith|9|15|3|3|cell-halign|c>|<cwith|9|15|3|3|cell-valign|c>|<cwith|9|9|3|3|cell-halign|c>|<cwith|9|9|3|3|cell-valign|c>|<cwith|10|10|3|3|cell-halign|c>|<cwith|10|10|3|3|cell-valign|c>|<cwith|11|11|3|3|cell-halign|c>|<cwith|11|11|3|3|cell-valign|c>|<cwith|12|12|3|3|cell-halign|c>|<cwith|12|12|3|3|cell-valign|c>|<cwith|13|13|3|3|cell-halign|c>|<cwith|13|13|3|3|cell-valign|c>|<cwith|14|14|3|3|cell-halign|c>|<cwith|14|14|3|3|cell-valign|c>|<cwith|15|15|3|3|cell-halign|c>|<cwith|15|15|3|3|cell-valign|c>|<cwith|16|22|3|3|cell-halign|c>|<cwith|16|22|3|3|cell-valign|c>|<cwith|16|16|3|3|cell-halign|c>|<cwith|16|16|3|3|cell-valign|c>|<cwith|17|17|3|3|cell-halign|c>|<cwith|17|17|3|3|cell-valign|c>|<cwith|18|18|3|3|cell-halign|c>|<cwith|18|18|3|3|cell-valign|c>|<cwith|19|19|3|3|cell-halign|c>|<cwith|19|19|3|3|cell-valign|c>|<cwith|20|20|3|3|cell-halign|c>|<cwith|20|20|3|3|cell-valign|c>|<cwith|21|21|3|3|cell-halign|c>|<cwith|21|21|3|3|cell-valign|c>|<cwith|22|22|3|3|cell-halign|c>|<cwith|22|22|3|3|cell-valign|c>|<cwith|23|29|3|3|cell-halign|c>|<cwith|23|29|3|3|cell-valign|c>|<cwith|23|23|3|3|cell-halign|c>|<cwith|23|23|3|3|cell-valign|c>|<cwith|24|24|3|3|cell-halign|c>|<cwith|24|24|3|3|cell-valign|c>|<cwith|25|25|3|3|cell-halign|c>|<cwith|25|25|3|3|cell-valign|c>|<cwith|26|26|3|3|cell-halign|c>|<cwith|26|26|3|3|cell-valign|c>|<cwith|27|27|3|3|cell-halign|c>|<cwith|27|27|3|3|cell-valign|c>|<cwith|28|28|3|3|cell-halign|c>|<cwith|28|28|3|3|cell-valign|c>|<cwith|29|29|3|3|cell-halign|c>|<cwith|29|29|3|3|cell-valign|c>|<cwith|30|32|3|3|cell-halign|c>|<cwith|30|32|3|3|cell-valign|c>|<cwith|30|32|3|3|cell-halign|c>|<cwith|30|32|3|3|cell-valign|c>|<cwith|30|30|3|3|cell-halign|c>|<cwith|30|30|3|3|cell-valign|c>|<cwith|31|31|3|3|cell-halign|c>|<cwith|31|31|3|3|cell-valign|c>|<cwith|32|32|3|3|cell-halign|c>|<cwith|32|32|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|2|33|3|3|cell-background|pastel
  blue>|<cwith|33|33|3|3|cell-bborder|1ln>|<cwith|2|2|3|3|cell-tborder|1ln>|<cwith|6|9|3|3|cell-halign|c>|<cwith|6|9|3|3|cell-valign|c>|<cwith|6|6|3|3|cell-halign|c>|<cwith|6|6|3|3|cell-valign|c>|<cwith|7|7|3|3|cell-halign|c>|<cwith|7|7|3|3|cell-valign|c>|<cwith|8|8|3|3|cell-halign|c>|<cwith|8|8|3|3|cell-valign|c>|<cwith|9|9|3|3|cell-halign|c>|<cwith|9|9|3|3|cell-valign|c>|<cwith|6|9|3|3|cell-background|pastel
  blue>|<cwith|6|6|3|3|cell-bborder|0ln>|<cwith|7|7|3|3|cell-tborder|0ln>|<cwith|5|6|3|3|cell-lborder|0ln>|<cwith|5|6|3|3|cell-rborder|0ln>|<cwith|5|5|3|3|cell-tborder|0ln>|<cwith|4|4|3|3|cell-bborder|0ln>|<cwith|5|5|3|3|cell-bborder|0ln>|<cwith|6|6|3|3|cell-tborder|0ln>|<cwith|5|5|3|3|cell-lborder|0ln>|<cwith|5|5|3|3|cell-rborder|0ln>|<cwith|10|13|3|3|cell-halign|c>|<cwith|10|13|3|3|cell-valign|c>|<cwith|10|10|3|3|cell-halign|c>|<cwith|10|10|3|3|cell-valign|c>|<cwith|11|11|3|3|cell-halign|c>|<cwith|11|11|3|3|cell-valign|c>|<cwith|12|12|3|3|cell-halign|c>|<cwith|12|12|3|3|cell-valign|c>|<cwith|13|13|3|3|cell-halign|c>|<cwith|13|13|3|3|cell-valign|c>|<cwith|13|13|3|3|cell-halign|c>|<cwith|13|13|3|3|cell-valign|c>|<cwith|10|13|3|3|cell-background|pastel
  blue>|<cwith|10|13|3|3|cell-halign|c>|<cwith|10|13|3|3|cell-valign|c>|<cwith|10|10|3|3|cell-halign|c>|<cwith|10|10|3|3|cell-valign|c>|<cwith|11|11|3|3|cell-halign|c>|<cwith|11|11|3|3|cell-valign|c>|<cwith|12|12|3|3|cell-halign|c>|<cwith|12|12|3|3|cell-valign|c>|<cwith|13|13|3|3|cell-halign|c>|<cwith|13|13|3|3|cell-valign|c>|<cwith|10|13|3|3|cell-background|pastel
  blue>|<cwith|10|10|3|3|cell-bborder|0ln>|<cwith|11|11|3|3|cell-tborder|0ln>|<cwith|10|10|3|3|cell-lborder|0ln>|<cwith|10|10|3|3|cell-rborder|0ln>|<cwith|10|10|3|3|cell-tborder|0ln>|<cwith|14|17|3|3|cell-halign|c>|<cwith|14|17|3|3|cell-valign|c>|<cwith|14|14|3|3|cell-halign|c>|<cwith|14|14|3|3|cell-valign|c>|<cwith|15|15|3|3|cell-halign|c>|<cwith|15|15|3|3|cell-valign|c>|<cwith|16|16|3|3|cell-halign|c>|<cwith|16|16|3|3|cell-valign|c>|<cwith|17|17|3|3|cell-halign|c>|<cwith|17|17|3|3|cell-valign|c>|<cwith|17|17|3|3|cell-halign|c>|<cwith|17|17|3|3|cell-valign|c>|<cwith|14|17|3|3|cell-background|pastel
  blue>|<cwith|14|17|3|3|cell-halign|c>|<cwith|14|17|3|3|cell-valign|c>|<cwith|14|14|3|3|cell-halign|c>|<cwith|14|14|3|3|cell-valign|c>|<cwith|15|15|3|3|cell-halign|c>|<cwith|15|15|3|3|cell-valign|c>|<cwith|16|16|3|3|cell-halign|c>|<cwith|16|16|3|3|cell-valign|c>|<cwith|17|17|3|3|cell-halign|c>|<cwith|17|17|3|3|cell-valign|c>|<cwith|14|17|3|3|cell-background|pastel
  blue>|<cwith|14|14|3|3|cell-bborder|0ln>|<cwith|15|15|3|3|cell-tborder|0ln>|<cwith|14|14|3|3|cell-lborder|0ln>|<cwith|14|14|3|3|cell-rborder|0ln>|<cwith|14|14|3|3|cell-tborder|0ln>|<cwith|18|21|3|3|cell-halign|c>|<cwith|18|21|3|3|cell-valign|c>|<cwith|18|18|3|3|cell-halign|c>|<cwith|18|18|3|3|cell-valign|c>|<cwith|19|19|3|3|cell-halign|c>|<cwith|19|19|3|3|cell-valign|c>|<cwith|20|20|3|3|cell-halign|c>|<cwith|20|20|3|3|cell-valign|c>|<cwith|21|21|3|3|cell-halign|c>|<cwith|21|21|3|3|cell-valign|c>|<cwith|21|21|3|3|cell-halign|c>|<cwith|21|21|3|3|cell-valign|c>|<cwith|18|21|3|3|cell-background|pastel
  blue>|<cwith|18|21|3|3|cell-halign|c>|<cwith|18|21|3|3|cell-valign|c>|<cwith|18|18|3|3|cell-halign|c>|<cwith|18|18|3|3|cell-valign|c>|<cwith|19|19|3|3|cell-halign|c>|<cwith|19|19|3|3|cell-valign|c>|<cwith|20|20|3|3|cell-halign|c>|<cwith|20|20|3|3|cell-valign|c>|<cwith|21|21|3|3|cell-halign|c>|<cwith|21|21|3|3|cell-valign|c>|<cwith|18|21|3|3|cell-background|pastel
  blue>|<cwith|18|18|3|3|cell-bborder|0ln>|<cwith|19|19|3|3|cell-tborder|0ln>|<cwith|18|18|3|3|cell-lborder|0ln>|<cwith|18|18|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|22|3|3|cell-halign|c>|<cwith|22|22|3|3|cell-valign|c>|<cwith|23|23|3|3|cell-halign|c>|<cwith|23|23|3|3|cell-valign|c>|<cwith|24|24|3|3|cell-halign|c>|<cwith|24|24|3|3|cell-valign|c>|<cwith|25|25|3|3|cell-halign|c>|<cwith|25|25|3|3|cell-valign|c>|<cwith|25|25|3|3|cell-halign|c>|<cwith|25|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-background|pastel
  blue>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|22|3|3|cell-halign|c>|<cwith|22|22|3|3|cell-valign|c>|<cwith|23|23|3|3|cell-halign|c>|<cwith|23|23|3|3|cell-valign|c>|<cwith|24|24|3|3|cell-halign|c>|<cwith|24|24|3|3|cell-valign|c>|<cwith|25|25|3|3|cell-halign|c>|<cwith|25|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-background|pastel
  blue>|<cwith|22|22|3|3|cell-bborder|0ln>|<cwith|23|23|3|3|cell-tborder|0ln>|<cwith|22|22|3|3|cell-lborder|0ln>|<cwith|22|22|3|3|cell-rborder|0ln>|<cwith|22|22|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|26|3|3|cell-halign|c>|<cwith|26|26|3|3|cell-valign|c>|<cwith|27|27|3|3|cell-halign|c>|<cwith|27|27|3|3|cell-valign|c>|<cwith|28|28|3|3|cell-halign|c>|<cwith|28|28|3|3|cell-valign|c>|<cwith|29|29|3|3|cell-halign|c>|<cwith|29|29|3|3|cell-valign|c>|<cwith|29|29|3|3|cell-halign|c>|<cwith|29|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-background|pastel
  blue>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|26|3|3|cell-halign|c>|<cwith|26|26|3|3|cell-valign|c>|<cwith|27|27|3|3|cell-halign|c>|<cwith|27|27|3|3|cell-valign|c>|<cwith|28|28|3|3|cell-halign|c>|<cwith|28|28|3|3|cell-valign|c>|<cwith|29|29|3|3|cell-halign|c>|<cwith|29|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-background|pastel
  blue>|<cwith|26|26|3|3|cell-bborder|0ln>|<cwith|27|27|3|3|cell-tborder|0ln>|<cwith|26|26|3|3|cell-lborder|0ln>|<cwith|26|26|3|3|cell-rborder|0ln>|<cwith|26|26|3|3|cell-tborder|0ln>|<cwith|30|33|3|3|cell-halign|c>|<cwith|30|33|3|3|cell-valign|c>|<cwith|30|30|3|3|cell-halign|c>|<cwith|30|30|3|3|cell-valign|c>|<cwith|31|31|3|3|cell-halign|c>|<cwith|31|31|3|3|cell-valign|c>|<cwith|32|32|3|3|cell-halign|c>|<cwith|32|32|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|30|33|3|3|cell-background|pastel
  blue>|<cwith|30|33|3|3|cell-halign|c>|<cwith|30|33|3|3|cell-valign|c>|<cwith|30|30|3|3|cell-halign|c>|<cwith|30|30|3|3|cell-valign|c>|<cwith|31|31|3|3|cell-halign|c>|<cwith|31|31|3|3|cell-valign|c>|<cwith|32|32|3|3|cell-halign|c>|<cwith|32|32|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|30|33|3|3|cell-background|pastel
  blue>|<cwith|30|30|3|3|cell-bborder|0ln>|<cwith|31|31|3|3|cell-tborder|0ln>|<cwith|30|30|3|3|cell-lborder|0ln>|<cwith|30|30|3|3|cell-rborder|0ln>|<cwith|30|30|3|3|cell-tborder|0ln>|<cwith|18|18|3|3|cell-rborder|0ln>|<cwith|2|3|9|12|cell-halign|c>|<cwith|2|3|9|12|cell-valign|c>|<cwith|2|3|9|12|cell-background|pastel
  green>|<cwith|2|3|12|12|cell-rborder|1ln>|<cwith|2|2|9|12|cell-tborder|1ln>|<cwith|4|5|9|12|cell-halign|c>|<cwith|4|5|9|12|cell-valign|c>|<cwith|4|5|9|12|cell-background|pastel
  green>|<cwith|4|5|12|12|cell-rborder|1ln>|<cwith|5|5|9|12|cell-halign|c>|<cwith|5|5|9|12|cell-valign|c>|<cwith|5|5|9|12|cell-background|pastel
  green>|<cwith|5|5|12|12|cell-rborder|1ln>|<cwith|5|5|9|11|cell-halign|c>|<cwith|5|5|9|11|cell-valign|c>|<cwith|5|5|9|11|cell-background|pastel
  green>|<cwith|6|7|9|12|cell-halign|c>|<cwith|6|7|9|12|cell-valign|c>|<cwith|6|7|9|12|cell-background|pastel
  green>|<cwith|6|7|12|12|cell-rborder|1ln>|<cwith|6|6|9|12|cell-halign|c>|<cwith|6|6|9|12|cell-valign|c>|<cwith|6|6|9|12|cell-background|pastel
  green>|<cwith|6|6|12|12|cell-rborder|1ln>|<cwith|7|7|9|12|cell-halign|c>|<cwith|7|7|9|12|cell-valign|c>|<cwith|7|7|9|12|cell-background|pastel
  green>|<cwith|7|7|12|12|cell-rborder|1ln>|<cwith|7|7|9|11|cell-halign|c>|<cwith|7|7|9|11|cell-valign|c>|<cwith|7|7|9|11|cell-background|pastel
  green>|<cwith|8|9|9|12|cell-halign|c>|<cwith|8|9|9|12|cell-valign|c>|<cwith|8|9|9|12|cell-background|pastel
  green>|<cwith|8|9|12|12|cell-rborder|1ln>|<cwith|8|9|9|12|cell-halign|c>|<cwith|8|9|9|12|cell-valign|c>|<cwith|8|9|9|12|cell-background|pastel
  green>|<cwith|8|9|12|12|cell-rborder|1ln>|<cwith|8|9|9|12|cell-halign|c>|<cwith|8|9|9|12|cell-valign|c>|<cwith|8|9|9|12|cell-background|pastel
  green>|<cwith|8|9|12|12|cell-rborder|1ln>|<cwith|8|9|9|12|cell-halign|c>|<cwith|8|9|9|12|cell-valign|c>|<cwith|8|9|9|12|cell-background|pastel
  green>|<cwith|8|9|12|12|cell-rborder|1ln>|<cwith|10|10|9|12|cell-halign|c>|<cwith|10|10|9|12|cell-valign|c>|<cwith|10|10|9|12|cell-background|pastel
  green>|<cwith|10|10|12|12|cell-rborder|1ln>|<cwith|10|10|9|12|cell-halign|c>|<cwith|10|10|9|12|cell-valign|c>|<cwith|10|10|9|12|cell-background|pastel
  green>|<cwith|10|10|12|12|cell-rborder|1ln>|<cwith|10|10|9|12|cell-halign|c>|<cwith|10|10|9|12|cell-valign|c>|<cwith|10|10|9|12|cell-background|pastel
  green>|<cwith|10|10|12|12|cell-rborder|1ln>|<cwith|11|12|9|12|cell-halign|c>|<cwith|11|12|9|12|cell-valign|c>|<cwith|11|12|9|12|cell-background|pastel
  green>|<cwith|11|12|12|12|cell-rborder|1ln>|<cwith|11|11|9|12|cell-halign|c>|<cwith|11|11|9|12|cell-valign|c>|<cwith|11|11|9|12|cell-background|pastel
  green>|<cwith|11|11|12|12|cell-rborder|1ln>|<cwith|11|11|9|12|cell-halign|c>|<cwith|11|11|9|12|cell-valign|c>|<cwith|11|11|9|12|cell-background|pastel
  green>|<cwith|11|11|12|12|cell-rborder|1ln>|<cwith|11|11|9|11|cell-halign|c>|<cwith|11|11|9|11|cell-valign|c>|<cwith|11|11|9|11|cell-background|pastel
  green>|<cwith|12|12|9|12|cell-halign|c>|<cwith|12|12|9|12|cell-valign|c>|<cwith|12|12|9|12|cell-background|pastel
  green>|<cwith|12|12|12|12|cell-rborder|1ln>|<cwith|12|12|9|12|cell-halign|c>|<cwith|12|12|9|12|cell-valign|c>|<cwith|12|12|9|12|cell-background|pastel
  green>|<cwith|12|12|12|12|cell-rborder|1ln>|<cwith|12|12|9|12|cell-halign|c>|<cwith|12|12|9|12|cell-valign|c>|<cwith|12|12|9|12|cell-background|pastel
  green>|<cwith|12|12|12|12|cell-rborder|1ln>|<cwith|12|12|9|12|cell-halign|c>|<cwith|12|12|9|12|cell-valign|c>|<cwith|12|12|9|12|cell-background|pastel
  green>|<cwith|12|12|12|12|cell-rborder|1ln>|<cwith|13|16|9|12|cell-halign|c>|<cwith|13|16|9|12|cell-valign|c>|<cwith|13|16|9|12|cell-background|pastel
  green>|<cwith|13|16|12|12|cell-rborder|1ln>|<cwith|13|13|9|12|cell-halign|c>|<cwith|13|13|9|12|cell-valign|c>|<cwith|13|13|9|12|cell-background|pastel
  green>|<cwith|13|13|12|12|cell-rborder|1ln>|<cwith|13|13|9|12|cell-halign|c>|<cwith|13|13|9|12|cell-valign|c>|<cwith|13|13|9|12|cell-background|pastel
  green>|<cwith|13|13|12|12|cell-rborder|1ln>|<cwith|13|13|9|12|cell-halign|c>|<cwith|13|13|9|12|cell-valign|c>|<cwith|13|13|9|12|cell-background|pastel
  green>|<cwith|13|13|12|12|cell-rborder|1ln>|<cwith|13|13|9|12|cell-halign|c>|<cwith|13|13|9|12|cell-valign|c>|<cwith|13|13|9|12|cell-background|pastel
  green>|<cwith|13|13|12|12|cell-rborder|1ln>|<cwith|14|14|9|12|cell-halign|c>|<cwith|14|14|9|12|cell-valign|c>|<cwith|14|14|9|12|cell-background|pastel
  green>|<cwith|14|14|12|12|cell-rborder|1ln>|<cwith|14|14|9|12|cell-halign|c>|<cwith|14|14|9|12|cell-valign|c>|<cwith|14|14|9|12|cell-background|pastel
  green>|<cwith|14|14|12|12|cell-rborder|1ln>|<cwith|14|14|9|12|cell-halign|c>|<cwith|14|14|9|12|cell-valign|c>|<cwith|14|14|9|12|cell-background|pastel
  green>|<cwith|14|14|12|12|cell-rborder|1ln>|<cwith|15|16|9|12|cell-halign|c>|<cwith|15|16|9|12|cell-valign|c>|<cwith|15|16|9|12|cell-background|pastel
  green>|<cwith|15|16|12|12|cell-rborder|1ln>|<cwith|15|15|9|12|cell-halign|c>|<cwith|15|15|9|12|cell-valign|c>|<cwith|15|15|9|12|cell-background|pastel
  green>|<cwith|15|15|12|12|cell-rborder|1ln>|<cwith|15|15|9|12|cell-halign|c>|<cwith|15|15|9|12|cell-valign|c>|<cwith|15|15|9|12|cell-background|pastel
  green>|<cwith|15|15|12|12|cell-rborder|1ln>|<cwith|15|15|9|11|cell-halign|c>|<cwith|15|15|9|11|cell-valign|c>|<cwith|15|15|9|11|cell-background|pastel
  green>|<cwith|16|16|9|12|cell-halign|c>|<cwith|16|16|9|12|cell-valign|c>|<cwith|16|16|9|12|cell-background|pastel
  green>|<cwith|16|16|12|12|cell-rborder|1ln>|<cwith|16|16|9|12|cell-halign|c>|<cwith|16|16|9|12|cell-valign|c>|<cwith|16|16|9|12|cell-background|pastel
  green>|<cwith|16|16|12|12|cell-rborder|1ln>|<cwith|16|16|9|12|cell-halign|c>|<cwith|16|16|9|12|cell-valign|c>|<cwith|16|16|9|12|cell-background|pastel
  green>|<cwith|16|16|12|12|cell-rborder|1ln>|<cwith|16|16|9|12|cell-halign|c>|<cwith|16|16|9|12|cell-valign|c>|<cwith|16|16|9|12|cell-background|pastel
  green>|<cwith|16|16|12|12|cell-rborder|1ln>|<cwith|17|17|9|12|cell-halign|c>|<cwith|17|17|9|12|cell-valign|c>|<cwith|17|17|9|12|cell-background|pastel
  green>|<cwith|17|17|12|12|cell-rborder|1ln>|<cwith|17|17|9|12|cell-halign|c>|<cwith|17|17|9|12|cell-valign|c>|<cwith|17|17|9|12|cell-background|pastel
  green>|<cwith|17|17|12|12|cell-rborder|1ln>|<cwith|17|17|9|12|cell-halign|c>|<cwith|17|17|9|12|cell-valign|c>|<cwith|17|17|9|12|cell-background|pastel
  green>|<cwith|17|17|12|12|cell-rborder|1ln>|<cwith|17|17|9|12|cell-halign|c>|<cwith|17|17|9|12|cell-valign|c>|<cwith|17|17|9|12|cell-background|pastel
  green>|<cwith|17|17|12|12|cell-rborder|1ln>|<cwith|17|17|9|12|cell-halign|c>|<cwith|17|17|9|12|cell-valign|c>|<cwith|17|17|9|12|cell-background|pastel
  green>|<cwith|17|17|12|12|cell-rborder|1ln>|<cwith|17|17|9|12|cell-halign|c>|<cwith|17|17|9|12|cell-valign|c>|<cwith|17|17|9|12|cell-background|pastel
  green>|<cwith|17|17|12|12|cell-rborder|1ln>|<cwith|18|21|9|12|cell-halign|c>|<cwith|18|21|9|12|cell-valign|c>|<cwith|18|21|9|12|cell-background|pastel
  green>|<cwith|18|21|12|12|cell-rborder|1ln>|<cwith|18|20|9|12|cell-halign|c>|<cwith|18|20|9|12|cell-valign|c>|<cwith|18|20|9|12|cell-background|pastel
  green>|<cwith|18|20|12|12|cell-rborder|1ln>|<cwith|18|18|9|12|cell-halign|c>|<cwith|18|18|9|12|cell-valign|c>|<cwith|18|18|9|12|cell-background|pastel
  green>|<cwith|18|18|12|12|cell-rborder|1ln>|<cwith|18|18|9|12|cell-halign|c>|<cwith|18|18|9|12|cell-valign|c>|<cwith|18|18|9|12|cell-background|pastel
  green>|<cwith|18|18|12|12|cell-rborder|1ln>|<cwith|18|18|9|12|cell-halign|c>|<cwith|18|18|9|12|cell-valign|c>|<cwith|18|18|9|12|cell-background|pastel
  green>|<cwith|18|18|12|12|cell-rborder|1ln>|<cwith|19|20|9|12|cell-halign|c>|<cwith|19|20|9|12|cell-valign|c>|<cwith|19|20|9|12|cell-background|pastel
  green>|<cwith|19|20|12|12|cell-rborder|1ln>|<cwith|19|19|9|12|cell-halign|c>|<cwith|19|19|9|12|cell-valign|c>|<cwith|19|19|9|12|cell-background|pastel
  green>|<cwith|19|19|12|12|cell-rborder|1ln>|<cwith|19|19|9|12|cell-halign|c>|<cwith|19|19|9|12|cell-valign|c>|<cwith|19|19|9|12|cell-background|pastel
  green>|<cwith|19|19|12|12|cell-rborder|1ln>|<cwith|19|19|9|11|cell-halign|c>|<cwith|19|19|9|11|cell-valign|c>|<cwith|19|19|9|11|cell-background|pastel
  green>|<cwith|20|20|9|12|cell-halign|c>|<cwith|20|20|9|12|cell-valign|c>|<cwith|20|20|9|12|cell-background|pastel
  green>|<cwith|20|20|12|12|cell-rborder|1ln>|<cwith|20|20|9|12|cell-halign|c>|<cwith|20|20|9|12|cell-valign|c>|<cwith|20|20|9|12|cell-background|pastel
  green>|<cwith|20|20|12|12|cell-rborder|1ln>|<cwith|20|20|9|12|cell-halign|c>|<cwith|20|20|9|12|cell-valign|c>|<cwith|20|20|9|12|cell-background|pastel
  green>|<cwith|20|20|12|12|cell-rborder|1ln>|<cwith|20|20|9|12|cell-halign|c>|<cwith|20|20|9|12|cell-valign|c>|<cwith|20|20|9|12|cell-background|pastel
  green>|<cwith|20|20|12|12|cell-rborder|1ln>|<cwith|21|21|9|12|cell-halign|c>|<cwith|21|21|9|12|cell-valign|c>|<cwith|21|21|9|12|cell-background|pastel
  green>|<cwith|21|21|12|12|cell-rborder|1ln>|<cwith|21|21|9|12|cell-halign|c>|<cwith|21|21|9|12|cell-valign|c>|<cwith|21|21|9|12|cell-background|pastel
  green>|<cwith|21|21|12|12|cell-rborder|1ln>|<cwith|21|21|9|12|cell-halign|c>|<cwith|21|21|9|12|cell-valign|c>|<cwith|21|21|9|12|cell-background|pastel
  green>|<cwith|21|21|12|12|cell-rborder|1ln>|<cwith|21|21|9|12|cell-halign|c>|<cwith|21|21|9|12|cell-valign|c>|<cwith|21|21|9|12|cell-background|pastel
  green>|<cwith|21|21|12|12|cell-rborder|1ln>|<cwith|21|21|9|12|cell-halign|c>|<cwith|21|21|9|12|cell-valign|c>|<cwith|21|21|9|12|cell-background|pastel
  green>|<cwith|21|21|12|12|cell-rborder|1ln>|<cwith|21|21|9|12|cell-halign|c>|<cwith|21|21|9|12|cell-valign|c>|<cwith|21|21|9|12|cell-background|pastel
  green>|<cwith|21|21|12|12|cell-rborder|1ln>|<cwith|22|25|9|12|cell-halign|c>|<cwith|22|25|9|12|cell-valign|c>|<cwith|22|25|9|12|cell-background|pastel
  green>|<cwith|22|25|12|12|cell-rborder|1ln>|<cwith|22|24|9|12|cell-halign|c>|<cwith|22|24|9|12|cell-valign|c>|<cwith|22|24|9|12|cell-background|pastel
  green>|<cwith|22|24|12|12|cell-rborder|1ln>|<cwith|22|22|9|12|cell-halign|c>|<cwith|22|22|9|12|cell-valign|c>|<cwith|22|22|9|12|cell-background|pastel
  green>|<cwith|22|22|12|12|cell-rborder|1ln>|<cwith|22|22|9|12|cell-halign|c>|<cwith|22|22|9|12|cell-valign|c>|<cwith|22|22|9|12|cell-background|pastel
  green>|<cwith|22|22|12|12|cell-rborder|1ln>|<cwith|22|22|9|12|cell-halign|c>|<cwith|22|22|9|12|cell-valign|c>|<cwith|22|22|9|12|cell-background|pastel
  green>|<cwith|22|22|12|12|cell-rborder|1ln>|<cwith|23|24|9|12|cell-halign|c>|<cwith|23|24|9|12|cell-valign|c>|<cwith|23|24|9|12|cell-background|pastel
  green>|<cwith|23|24|12|12|cell-rborder|1ln>|<cwith|23|23|9|12|cell-halign|c>|<cwith|23|23|9|12|cell-valign|c>|<cwith|23|23|9|12|cell-background|pastel
  green>|<cwith|23|23|12|12|cell-rborder|1ln>|<cwith|23|23|9|12|cell-halign|c>|<cwith|23|23|9|12|cell-valign|c>|<cwith|23|23|9|12|cell-background|pastel
  green>|<cwith|23|23|12|12|cell-rborder|1ln>|<cwith|23|23|9|11|cell-halign|c>|<cwith|23|23|9|11|cell-valign|c>|<cwith|23|23|9|11|cell-background|pastel
  green>|<cwith|24|24|9|12|cell-halign|c>|<cwith|24|24|9|12|cell-valign|c>|<cwith|24|24|9|12|cell-background|pastel
  green>|<cwith|24|24|12|12|cell-rborder|1ln>|<cwith|24|24|9|12|cell-halign|c>|<cwith|24|24|9|12|cell-valign|c>|<cwith|24|24|9|12|cell-background|pastel
  green>|<cwith|24|24|12|12|cell-rborder|1ln>|<cwith|24|24|9|12|cell-halign|c>|<cwith|24|24|9|12|cell-valign|c>|<cwith|24|24|9|12|cell-background|pastel
  green>|<cwith|24|24|12|12|cell-rborder|1ln>|<cwith|24|24|9|12|cell-halign|c>|<cwith|24|24|9|12|cell-valign|c>|<cwith|24|24|9|12|cell-background|pastel
  green>|<cwith|24|24|12|12|cell-rborder|1ln>|<cwith|25|25|9|12|cell-halign|c>|<cwith|25|25|9|12|cell-valign|c>|<cwith|25|25|9|12|cell-background|pastel
  green>|<cwith|25|25|12|12|cell-rborder|1ln>|<cwith|25|25|9|12|cell-halign|c>|<cwith|25|25|9|12|cell-valign|c>|<cwith|25|25|9|12|cell-background|pastel
  green>|<cwith|25|25|12|12|cell-rborder|1ln>|<cwith|25|25|9|12|cell-halign|c>|<cwith|25|25|9|12|cell-valign|c>|<cwith|25|25|9|12|cell-background|pastel
  green>|<cwith|25|25|12|12|cell-rborder|1ln>|<cwith|25|25|9|12|cell-halign|c>|<cwith|25|25|9|12|cell-valign|c>|<cwith|25|25|9|12|cell-background|pastel
  green>|<cwith|25|25|12|12|cell-rborder|1ln>|<cwith|25|25|9|12|cell-halign|c>|<cwith|25|25|9|12|cell-valign|c>|<cwith|25|25|9|12|cell-background|pastel
  green>|<cwith|25|25|12|12|cell-rborder|1ln>|<cwith|25|25|9|12|cell-halign|c>|<cwith|25|25|9|12|cell-valign|c>|<cwith|25|25|9|12|cell-background|pastel
  green>|<cwith|25|25|12|12|cell-rborder|1ln>|<cwith|26|29|9|12|cell-halign|c>|<cwith|26|29|9|12|cell-valign|c>|<cwith|26|29|9|12|cell-background|pastel
  green>|<cwith|26|29|12|12|cell-rborder|1ln>|<cwith|26|28|9|12|cell-halign|c>|<cwith|26|28|9|12|cell-valign|c>|<cwith|26|28|9|12|cell-background|pastel
  green>|<cwith|26|28|12|12|cell-rborder|1ln>|<cwith|26|26|9|12|cell-halign|c>|<cwith|26|26|9|12|cell-valign|c>|<cwith|26|26|9|12|cell-background|pastel
  green>|<cwith|26|26|12|12|cell-rborder|1ln>|<cwith|26|26|9|12|cell-halign|c>|<cwith|26|26|9|12|cell-valign|c>|<cwith|26|26|9|12|cell-background|pastel
  green>|<cwith|26|26|12|12|cell-rborder|1ln>|<cwith|26|26|9|12|cell-halign|c>|<cwith|26|26|9|12|cell-valign|c>|<cwith|26|26|9|12|cell-background|pastel
  green>|<cwith|26|26|12|12|cell-rborder|1ln>|<cwith|27|28|9|12|cell-halign|c>|<cwith|27|28|9|12|cell-valign|c>|<cwith|27|28|9|12|cell-background|pastel
  green>|<cwith|27|28|12|12|cell-rborder|1ln>|<cwith|27|27|9|12|cell-halign|c>|<cwith|27|27|9|12|cell-valign|c>|<cwith|27|27|9|12|cell-background|pastel
  green>|<cwith|27|27|12|12|cell-rborder|1ln>|<cwith|27|27|9|12|cell-halign|c>|<cwith|27|27|9|12|cell-valign|c>|<cwith|27|27|9|12|cell-background|pastel
  green>|<cwith|27|27|12|12|cell-rborder|1ln>|<cwith|27|27|9|11|cell-halign|c>|<cwith|27|27|9|11|cell-valign|c>|<cwith|27|27|9|11|cell-background|pastel
  green>|<cwith|28|28|9|12|cell-halign|c>|<cwith|28|28|9|12|cell-valign|c>|<cwith|28|28|9|12|cell-background|pastel
  green>|<cwith|28|28|12|12|cell-rborder|1ln>|<cwith|28|28|9|12|cell-halign|c>|<cwith|28|28|9|12|cell-valign|c>|<cwith|28|28|9|12|cell-background|pastel
  green>|<cwith|28|28|12|12|cell-rborder|1ln>|<cwith|28|28|9|12|cell-halign|c>|<cwith|28|28|9|12|cell-valign|c>|<cwith|28|28|9|12|cell-background|pastel
  green>|<cwith|28|28|12|12|cell-rborder|1ln>|<cwith|28|28|9|12|cell-halign|c>|<cwith|28|28|9|12|cell-valign|c>|<cwith|28|28|9|12|cell-background|pastel
  green>|<cwith|28|28|12|12|cell-rborder|1ln>|<cwith|29|29|9|12|cell-halign|c>|<cwith|29|29|9|12|cell-valign|c>|<cwith|29|29|9|12|cell-background|pastel
  green>|<cwith|29|29|12|12|cell-rborder|1ln>|<cwith|29|29|9|12|cell-halign|c>|<cwith|29|29|9|12|cell-valign|c>|<cwith|29|29|9|12|cell-background|pastel
  green>|<cwith|29|29|12|12|cell-rborder|1ln>|<cwith|29|29|9|12|cell-halign|c>|<cwith|29|29|9|12|cell-valign|c>|<cwith|29|29|9|12|cell-background|pastel
  green>|<cwith|29|29|12|12|cell-rborder|1ln>|<cwith|29|29|9|12|cell-halign|c>|<cwith|29|29|9|12|cell-valign|c>|<cwith|29|29|9|12|cell-background|pastel
  green>|<cwith|29|29|12|12|cell-rborder|1ln>|<cwith|29|29|9|12|cell-halign|c>|<cwith|29|29|9|12|cell-valign|c>|<cwith|29|29|9|12|cell-background|pastel
  green>|<cwith|29|29|12|12|cell-rborder|1ln>|<cwith|29|29|9|12|cell-halign|c>|<cwith|29|29|9|12|cell-valign|c>|<cwith|29|29|9|12|cell-background|pastel
  green>|<cwith|29|29|12|12|cell-rborder|1ln>|<cwith|30|33|9|12|cell-halign|c>|<cwith|30|33|9|12|cell-valign|c>|<cwith|30|33|9|12|cell-background|pastel
  green>|<cwith|30|33|12|12|cell-rborder|1ln>|<cwith|30|32|9|12|cell-halign|c>|<cwith|30|32|9|12|cell-valign|c>|<cwith|30|32|9|12|cell-background|pastel
  green>|<cwith|30|32|12|12|cell-rborder|1ln>|<cwith|30|30|9|12|cell-halign|c>|<cwith|30|30|9|12|cell-valign|c>|<cwith|30|30|9|12|cell-background|pastel
  green>|<cwith|30|30|12|12|cell-rborder|1ln>|<cwith|30|30|9|12|cell-halign|c>|<cwith|30|30|9|12|cell-valign|c>|<cwith|30|30|9|12|cell-background|pastel
  green>|<cwith|30|30|12|12|cell-rborder|1ln>|<cwith|30|30|9|12|cell-halign|c>|<cwith|30|30|9|12|cell-valign|c>|<cwith|30|30|9|12|cell-background|pastel
  green>|<cwith|30|30|12|12|cell-rborder|1ln>|<cwith|31|32|9|12|cell-halign|c>|<cwith|31|32|9|12|cell-valign|c>|<cwith|31|32|9|12|cell-background|pastel
  green>|<cwith|31|32|12|12|cell-rborder|1ln>|<cwith|31|31|9|12|cell-halign|c>|<cwith|31|31|9|12|cell-valign|c>|<cwith|31|31|9|12|cell-background|pastel
  green>|<cwith|31|31|12|12|cell-rborder|1ln>|<cwith|31|31|9|12|cell-halign|c>|<cwith|31|31|9|12|cell-valign|c>|<cwith|31|31|9|12|cell-background|pastel
  green>|<cwith|31|31|12|12|cell-rborder|1ln>|<cwith|31|31|9|11|cell-halign|c>|<cwith|31|31|9|11|cell-valign|c>|<cwith|31|31|9|11|cell-background|pastel
  green>|<cwith|32|32|9|12|cell-halign|c>|<cwith|32|32|9|12|cell-valign|c>|<cwith|32|32|9|12|cell-background|pastel
  green>|<cwith|32|32|12|12|cell-rborder|1ln>|<cwith|32|32|9|12|cell-halign|c>|<cwith|32|32|9|12|cell-valign|c>|<cwith|32|32|9|12|cell-background|pastel
  green>|<cwith|32|32|12|12|cell-rborder|1ln>|<cwith|32|32|9|12|cell-halign|c>|<cwith|32|32|9|12|cell-valign|c>|<cwith|32|32|9|12|cell-background|pastel
  green>|<cwith|32|32|12|12|cell-rborder|1ln>|<cwith|32|32|9|12|cell-halign|c>|<cwith|32|32|9|12|cell-valign|c>|<cwith|32|32|9|12|cell-background|pastel
  green>|<cwith|32|32|12|12|cell-rborder|1ln>|<cwith|33|33|9|12|cell-halign|c>|<cwith|33|33|9|12|cell-valign|c>|<cwith|33|33|9|12|cell-background|pastel
  green>|<cwith|33|33|12|12|cell-rborder|1ln>|<cwith|33|33|9|12|cell-halign|c>|<cwith|33|33|9|12|cell-valign|c>|<cwith|33|33|9|12|cell-background|pastel
  green>|<cwith|33|33|12|12|cell-rborder|1ln>|<cwith|33|33|9|12|cell-halign|c>|<cwith|33|33|9|12|cell-valign|c>|<cwith|33|33|9|12|cell-background|pastel
  green>|<cwith|33|33|12|12|cell-rborder|1ln>|<cwith|33|33|9|12|cell-halign|c>|<cwith|33|33|9|12|cell-valign|c>|<cwith|33|33|9|12|cell-background|pastel
  green>|<cwith|33|33|12|12|cell-rborder|1ln>|<cwith|33|33|9|12|cell-halign|c>|<cwith|33|33|9|12|cell-valign|c>|<cwith|33|33|9|12|cell-background|pastel
  green>|<cwith|33|33|12|12|cell-rborder|1ln>|<cwith|33|33|9|12|cell-halign|c>|<cwith|33|33|9|12|cell-valign|c>|<cwith|33|33|9|12|cell-background|pastel
  green>|<cwith|33|33|12|12|cell-rborder|1ln>|<table|<row|<cell|a<rsub|2>>|<cell|a<rsub|1>>|<cell|a<rsub|0>>|<cell|R<rsub|0>>|<cell|R<rsub|1>>|<cell|R<rsub|2>>|<cell|R<rsub|3>>|<cell|R<rsub|VIP>>|<cell|UP>|<cell|STOP>|<cell|DOWN>|<cell|HEX>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|<shell|0x0>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|<shell|0x4>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|<shell|0x2>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x6>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|<shell|0x5>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x3>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<shell|0x7>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|<shell|0x5>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x3>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<shell|0x7>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|<shell|0x5>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x3>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|<shell|0x7>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|<shell|0x5>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x3>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|<shell|0x7>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|<shell|0x5>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x3>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|<shell|0x7>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|<shell|0x5>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x3>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|<shell|0x7>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|<shell|0x5>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x3>>>|<row|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|<shell|0x7>>>>>>>>>>>>|Comparator
  truth table for <math|a<rsub|2>=0,a<rsub|1>=1,a<rsub|0>=1>>

  The fifth truth table represents the 32 possible <math|R<rsub|x>> requests
  in the case where <math|a<rsub|2>=1,a<rsub|1>=0,a<rsub|0>=0> (so we are in
  the case where the arrival signal <math|A<rsub|VIP>> is activated):

  <big-table|<tiny|<tabular|<tformat|<table|<row|<cell|<math|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|19|33|5|8|cell-halign|c>|<cwith|19|33|5|8|cell-valign|c>|<cwith|19|26|4|4|cell-halign|c>|<cwith|19|26|4|4|cell-valign|c>|<cwith|19|26|4|4|cell-halign|c>|<cwith|19|26|4|4|cell-valign|c>|<cwith|27|34|4|4|cell-halign|c>|<cwith|27|34|4|4|cell-valign|c>|<cwith|27|34|4|4|cell-halign|c>|<cwith|27|34|4|4|cell-valign|c>|<cwith|2|2|1|3|cell-halign|c>|<cwith|2|2|1|3|cell-valign|c>|<cwith|3|3|1|3|cell-halign|c>|<cwith|3|3|1|3|cell-valign|c>|<cwith|4|4|1|3|cell-halign|c>|<cwith|4|4|1|3|cell-valign|c>|<cwith|5|5|1|3|cell-halign|c>|<cwith|5|5|1|3|cell-valign|c>|<cwith|6|6|1|3|cell-halign|c>|<cwith|6|6|1|3|cell-valign|c>|<cwith|7|7|1|3|cell-halign|c>|<cwith|7|7|1|3|cell-valign|c>|<cwith|8|8|1|3|cell-halign|c>|<cwith|8|8|1|3|cell-valign|c>|<cwith|9|15|1|3|cell-halign|c>|<cwith|9|15|1|3|cell-valign|c>|<cwith|9|9|1|3|cell-halign|c>|<cwith|9|9|1|3|cell-valign|c>|<cwith|10|10|1|3|cell-halign|c>|<cwith|10|10|1|3|cell-valign|c>|<cwith|11|11|1|3|cell-halign|c>|<cwith|11|11|1|3|cell-valign|c>|<cwith|12|12|1|3|cell-halign|c>|<cwith|12|12|1|3|cell-valign|c>|<cwith|13|13|1|3|cell-halign|c>|<cwith|13|13|1|3|cell-valign|c>|<cwith|14|14|1|3|cell-halign|c>|<cwith|14|14|1|3|cell-valign|c>|<cwith|15|15|1|3|cell-halign|c>|<cwith|15|15|1|3|cell-valign|c>|<cwith|16|22|1|3|cell-halign|c>|<cwith|16|22|1|3|cell-valign|c>|<cwith|16|16|1|3|cell-halign|c>|<cwith|16|16|1|3|cell-valign|c>|<cwith|17|17|1|3|cell-halign|c>|<cwith|17|17|1|3|cell-valign|c>|<cwith|18|18|1|3|cell-halign|c>|<cwith|18|18|1|3|cell-valign|c>|<cwith|19|19|1|3|cell-halign|c>|<cwith|19|19|1|3|cell-valign|c>|<cwith|20|20|1|3|cell-halign|c>|<cwith|20|20|1|3|cell-valign|c>|<cwith|21|21|1|3|cell-halign|c>|<cwith|21|21|1|3|cell-valign|c>|<cwith|22|22|1|3|cell-halign|c>|<cwith|22|22|1|3|cell-valign|c>|<cwith|23|29|1|3|cell-halign|c>|<cwith|23|29|1|3|cell-valign|c>|<cwith|23|23|1|3|cell-halign|c>|<cwith|23|23|1|3|cell-valign|c>|<cwith|24|24|1|3|cell-halign|c>|<cwith|24|24|1|3|cell-valign|c>|<cwith|25|25|1|3|cell-halign|c>|<cwith|25|25|1|3|cell-valign|c>|<cwith|26|26|1|3|cell-halign|c>|<cwith|26|26|1|3|cell-valign|c>|<cwith|27|27|1|3|cell-halign|c>|<cwith|27|27|1|3|cell-valign|c>|<cwith|28|28|1|3|cell-halign|c>|<cwith|28|28|1|3|cell-valign|c>|<cwith|29|29|1|3|cell-halign|c>|<cwith|29|29|1|3|cell-valign|c>|<cwith|30|32|1|3|cell-halign|c>|<cwith|30|32|1|3|cell-valign|c>|<cwith|30|32|1|3|cell-halign|c>|<cwith|30|32|1|3|cell-valign|c>|<cwith|30|30|1|3|cell-halign|c>|<cwith|30|30|1|3|cell-valign|c>|<cwith|31|31|1|3|cell-halign|c>|<cwith|31|31|1|3|cell-valign|c>|<cwith|32|32|1|3|cell-halign|c>|<cwith|32|32|1|3|cell-valign|c>|<cwith|33|33|1|3|cell-halign|c>|<cwith|33|33|1|3|cell-valign|c>|<cwith|33|33|1|3|cell-halign|c>|<cwith|33|33|1|3|cell-valign|c>|<cwith|33|33|1|3|cell-halign|c>|<cwith|33|33|1|3|cell-valign|c>|<cwith|33|33|1|3|cell-halign|c>|<cwith|33|33|1|3|cell-valign|c>|<cwith|1|-1|9|12|cell-background|pastel
  green>|<cwith|1|-1|1|8|cell-background|pastel
  blue>|<cwith|33|33|1|-1|cell-bborder|1ln>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|12|12|cell-rborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|12|12|cell-rborder|1ln>|<cwith|6|9|3|3|cell-halign|c>|<cwith|6|9|3|3|cell-valign|c>|<cwith|6|6|3|3|cell-halign|c>|<cwith|6|6|3|3|cell-valign|c>|<cwith|7|7|3|3|cell-halign|c>|<cwith|7|7|3|3|cell-valign|c>|<cwith|8|8|3|3|cell-halign|c>|<cwith|8|8|3|3|cell-valign|c>|<cwith|9|9|3|3|cell-halign|c>|<cwith|9|9|3|3|cell-valign|c>|<cwith|6|9|3|3|cell-background|pastel
  blue>|<cwith|6|6|3|3|cell-bborder|0ln>|<cwith|7|7|3|3|cell-tborder|0ln>|<cwith|5|6|3|3|cell-rborder|0ln>|<cwith|5|6|4|4|cell-lborder|0ln>|<cwith|5|5|3|3|cell-tborder|0ln>|<cwith|4|4|3|3|cell-bborder|0ln>|<cwith|5|5|3|3|cell-bborder|0ln>|<cwith|6|6|3|3|cell-tborder|0ln>|<cwith|5|5|3|3|cell-rborder|0ln>|<cwith|5|5|4|4|cell-lborder|0ln>|<cwith|10|13|3|3|cell-halign|c>|<cwith|10|13|3|3|cell-valign|c>|<cwith|10|10|3|3|cell-halign|c>|<cwith|10|10|3|3|cell-valign|c>|<cwith|11|11|3|3|cell-halign|c>|<cwith|11|11|3|3|cell-valign|c>|<cwith|12|12|3|3|cell-halign|c>|<cwith|12|12|3|3|cell-valign|c>|<cwith|13|13|3|3|cell-halign|c>|<cwith|13|13|3|3|cell-valign|c>|<cwith|13|13|3|3|cell-halign|c>|<cwith|13|13|3|3|cell-valign|c>|<cwith|10|13|3|3|cell-background|pastel
  blue>|<cwith|10|13|3|3|cell-halign|c>|<cwith|10|13|3|3|cell-valign|c>|<cwith|10|10|3|3|cell-halign|c>|<cwith|10|10|3|3|cell-valign|c>|<cwith|11|11|3|3|cell-halign|c>|<cwith|11|11|3|3|cell-valign|c>|<cwith|12|12|3|3|cell-halign|c>|<cwith|12|12|3|3|cell-valign|c>|<cwith|13|13|3|3|cell-halign|c>|<cwith|13|13|3|3|cell-valign|c>|<cwith|10|13|3|3|cell-background|pastel
  blue>|<cwith|10|10|3|3|cell-bborder|0ln>|<cwith|11|11|3|3|cell-tborder|0ln>|<cwith|10|10|3|3|cell-rborder|0ln>|<cwith|10|10|3|3|cell-tborder|0ln>|<cwith|14|17|3|3|cell-halign|c>|<cwith|14|17|3|3|cell-valign|c>|<cwith|14|14|3|3|cell-halign|c>|<cwith|14|14|3|3|cell-valign|c>|<cwith|15|15|3|3|cell-halign|c>|<cwith|15|15|3|3|cell-valign|c>|<cwith|16|16|3|3|cell-halign|c>|<cwith|16|16|3|3|cell-valign|c>|<cwith|17|17|3|3|cell-halign|c>|<cwith|17|17|3|3|cell-valign|c>|<cwith|17|17|3|3|cell-halign|c>|<cwith|17|17|3|3|cell-valign|c>|<cwith|14|17|3|3|cell-background|pastel
  blue>|<cwith|14|17|3|3|cell-halign|c>|<cwith|14|17|3|3|cell-valign|c>|<cwith|14|14|3|3|cell-halign|c>|<cwith|14|14|3|3|cell-valign|c>|<cwith|15|15|3|3|cell-halign|c>|<cwith|15|15|3|3|cell-valign|c>|<cwith|16|16|3|3|cell-halign|c>|<cwith|16|16|3|3|cell-valign|c>|<cwith|17|17|3|3|cell-halign|c>|<cwith|17|17|3|3|cell-valign|c>|<cwith|14|17|3|3|cell-background|pastel
  blue>|<cwith|14|14|3|3|cell-bborder|0ln>|<cwith|15|15|3|3|cell-tborder|0ln>|<cwith|14|14|3|3|cell-rborder|0ln>|<cwith|14|14|3|3|cell-tborder|0ln>|<cwith|18|21|3|3|cell-halign|c>|<cwith|18|21|3|3|cell-valign|c>|<cwith|18|18|3|3|cell-halign|c>|<cwith|18|18|3|3|cell-valign|c>|<cwith|19|19|3|3|cell-halign|c>|<cwith|19|19|3|3|cell-valign|c>|<cwith|20|20|3|3|cell-halign|c>|<cwith|20|20|3|3|cell-valign|c>|<cwith|21|21|3|3|cell-halign|c>|<cwith|21|21|3|3|cell-valign|c>|<cwith|21|21|3|3|cell-halign|c>|<cwith|21|21|3|3|cell-valign|c>|<cwith|18|21|3|3|cell-background|pastel
  blue>|<cwith|18|21|3|3|cell-halign|c>|<cwith|18|21|3|3|cell-valign|c>|<cwith|18|18|3|3|cell-halign|c>|<cwith|18|18|3|3|cell-valign|c>|<cwith|19|19|3|3|cell-halign|c>|<cwith|19|19|3|3|cell-valign|c>|<cwith|20|20|3|3|cell-halign|c>|<cwith|20|20|3|3|cell-valign|c>|<cwith|21|21|3|3|cell-halign|c>|<cwith|21|21|3|3|cell-valign|c>|<cwith|18|21|3|3|cell-background|pastel
  blue>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|22|3|3|cell-halign|c>|<cwith|22|22|3|3|cell-valign|c>|<cwith|23|23|3|3|cell-halign|c>|<cwith|23|23|3|3|cell-valign|c>|<cwith|24|24|3|3|cell-halign|c>|<cwith|24|24|3|3|cell-valign|c>|<cwith|25|25|3|3|cell-halign|c>|<cwith|25|25|3|3|cell-valign|c>|<cwith|25|25|3|3|cell-halign|c>|<cwith|25|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-background|pastel
  blue>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|22|3|3|cell-halign|c>|<cwith|22|22|3|3|cell-valign|c>|<cwith|23|23|3|3|cell-halign|c>|<cwith|23|23|3|3|cell-valign|c>|<cwith|24|24|3|3|cell-halign|c>|<cwith|24|24|3|3|cell-valign|c>|<cwith|25|25|3|3|cell-halign|c>|<cwith|25|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-background|pastel
  blue>|<cwith|22|22|3|3|cell-bborder|0ln>|<cwith|23|23|3|3|cell-tborder|0ln>|<cwith|22|22|3|3|cell-rborder|0ln>|<cwith|22|22|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|26|3|3|cell-halign|c>|<cwith|26|26|3|3|cell-valign|c>|<cwith|27|27|3|3|cell-halign|c>|<cwith|27|27|3|3|cell-valign|c>|<cwith|28|28|3|3|cell-halign|c>|<cwith|28|28|3|3|cell-valign|c>|<cwith|29|29|3|3|cell-halign|c>|<cwith|29|29|3|3|cell-valign|c>|<cwith|29|29|3|3|cell-halign|c>|<cwith|29|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-background|pastel
  blue>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|26|3|3|cell-halign|c>|<cwith|26|26|3|3|cell-valign|c>|<cwith|27|27|3|3|cell-halign|c>|<cwith|27|27|3|3|cell-valign|c>|<cwith|28|28|3|3|cell-halign|c>|<cwith|28|28|3|3|cell-valign|c>|<cwith|29|29|3|3|cell-halign|c>|<cwith|29|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-background|pastel
  blue>|<cwith|26|26|3|3|cell-bborder|0ln>|<cwith|27|27|3|3|cell-tborder|0ln>|<cwith|26|26|3|3|cell-rborder|0ln>|<cwith|26|26|3|3|cell-tborder|0ln>|<cwith|30|33|3|3|cell-halign|c>|<cwith|30|33|3|3|cell-valign|c>|<cwith|30|30|3|3|cell-halign|c>|<cwith|30|30|3|3|cell-valign|c>|<cwith|31|31|3|3|cell-halign|c>|<cwith|31|31|3|3|cell-valign|c>|<cwith|32|32|3|3|cell-halign|c>|<cwith|32|32|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|30|33|3|3|cell-background|pastel
  blue>|<cwith|30|33|3|3|cell-halign|c>|<cwith|30|33|3|3|cell-valign|c>|<cwith|30|30|3|3|cell-halign|c>|<cwith|30|30|3|3|cell-valign|c>|<cwith|31|31|3|3|cell-halign|c>|<cwith|31|31|3|3|cell-valign|c>|<cwith|32|32|3|3|cell-halign|c>|<cwith|32|32|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|30|33|3|3|cell-background|pastel
  blue>|<cwith|30|30|3|3|cell-bborder|0ln>|<cwith|31|31|3|3|cell-tborder|0ln>|<cwith|30|30|3|3|cell-rborder|0ln>|<cwith|30|30|3|3|cell-tborder|0ln>|<cwith|2|33|2|2|cell-halign|c>|<cwith|2|33|2|2|cell-valign|c>|<cwith|2|2|2|2|cell-halign|c>|<cwith|2|2|2|2|cell-valign|c>|<cwith|3|3|2|2|cell-halign|c>|<cwith|3|3|2|2|cell-valign|c>|<cwith|4|4|2|2|cell-halign|c>|<cwith|4|4|2|2|cell-valign|c>|<cwith|5|5|2|2|cell-halign|c>|<cwith|5|5|2|2|cell-valign|c>|<cwith|6|6|2|2|cell-halign|c>|<cwith|6|6|2|2|cell-valign|c>|<cwith|7|7|2|2|cell-halign|c>|<cwith|7|7|2|2|cell-valign|c>|<cwith|8|8|2|2|cell-halign|c>|<cwith|8|8|2|2|cell-valign|c>|<cwith|9|15|2|2|cell-halign|c>|<cwith|9|15|2|2|cell-valign|c>|<cwith|9|9|2|2|cell-halign|c>|<cwith|9|9|2|2|cell-valign|c>|<cwith|10|10|2|2|cell-halign|c>|<cwith|10|10|2|2|cell-valign|c>|<cwith|11|11|2|2|cell-halign|c>|<cwith|11|11|2|2|cell-valign|c>|<cwith|12|12|2|2|cell-halign|c>|<cwith|12|12|2|2|cell-valign|c>|<cwith|13|13|2|2|cell-halign|c>|<cwith|13|13|2|2|cell-valign|c>|<cwith|14|14|2|2|cell-halign|c>|<cwith|14|14|2|2|cell-valign|c>|<cwith|15|15|2|2|cell-halign|c>|<cwith|15|15|2|2|cell-valign|c>|<cwith|16|22|2|2|cell-halign|c>|<cwith|16|22|2|2|cell-valign|c>|<cwith|16|16|2|2|cell-halign|c>|<cwith|16|16|2|2|cell-valign|c>|<cwith|17|17|2|2|cell-halign|c>|<cwith|17|17|2|2|cell-valign|c>|<cwith|18|18|2|2|cell-halign|c>|<cwith|18|18|2|2|cell-valign|c>|<cwith|19|19|2|2|cell-halign|c>|<cwith|19|19|2|2|cell-valign|c>|<cwith|20|20|2|2|cell-halign|c>|<cwith|20|20|2|2|cell-valign|c>|<cwith|21|21|2|2|cell-halign|c>|<cwith|21|21|2|2|cell-valign|c>|<cwith|22|22|2|2|cell-halign|c>|<cwith|22|22|2|2|cell-valign|c>|<cwith|23|29|2|2|cell-halign|c>|<cwith|23|29|2|2|cell-valign|c>|<cwith|23|23|2|2|cell-halign|c>|<cwith|23|23|2|2|cell-valign|c>|<cwith|24|24|2|2|cell-halign|c>|<cwith|24|24|2|2|cell-valign|c>|<cwith|25|25|2|2|cell-halign|c>|<cwith|25|25|2|2|cell-valign|c>|<cwith|26|26|2|2|cell-halign|c>|<cwith|26|26|2|2|cell-valign|c>|<cwith|27|27|2|2|cell-halign|c>|<cwith|27|27|2|2|cell-valign|c>|<cwith|28|28|2|2|cell-halign|c>|<cwith|28|28|2|2|cell-valign|c>|<cwith|29|29|2|2|cell-halign|c>|<cwith|29|29|2|2|cell-valign|c>|<cwith|30|32|2|2|cell-halign|c>|<cwith|30|32|2|2|cell-valign|c>|<cwith|30|32|2|2|cell-halign|c>|<cwith|30|32|2|2|cell-valign|c>|<cwith|30|30|2|2|cell-halign|c>|<cwith|30|30|2|2|cell-valign|c>|<cwith|31|31|2|2|cell-halign|c>|<cwith|31|31|2|2|cell-valign|c>|<cwith|32|32|2|2|cell-halign|c>|<cwith|32|32|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|2|33|2|2|cell-background|pastel
  blue>|<cwith|6|9|2|2|cell-halign|c>|<cwith|6|9|2|2|cell-valign|c>|<cwith|6|6|2|2|cell-halign|c>|<cwith|6|6|2|2|cell-valign|c>|<cwith|7|7|2|2|cell-halign|c>|<cwith|7|7|2|2|cell-valign|c>|<cwith|8|8|2|2|cell-halign|c>|<cwith|8|8|2|2|cell-valign|c>|<cwith|9|9|2|2|cell-halign|c>|<cwith|9|9|2|2|cell-valign|c>|<cwith|6|9|2|2|cell-background|pastel
  blue>|<cwith|6|6|2|2|cell-bborder|0ln>|<cwith|7|7|2|2|cell-tborder|0ln>|<cwith|5|5|2|2|cell-tborder|0ln>|<cwith|4|4|2|2|cell-bborder|0ln>|<cwith|5|5|2|2|cell-bborder|0ln>|<cwith|6|6|2|2|cell-tborder|0ln>|<cwith|10|13|2|2|cell-halign|c>|<cwith|10|13|2|2|cell-valign|c>|<cwith|10|10|2|2|cell-halign|c>|<cwith|10|10|2|2|cell-valign|c>|<cwith|11|11|2|2|cell-halign|c>|<cwith|11|11|2|2|cell-valign|c>|<cwith|12|12|2|2|cell-halign|c>|<cwith|12|12|2|2|cell-valign|c>|<cwith|13|13|2|2|cell-halign|c>|<cwith|13|13|2|2|cell-valign|c>|<cwith|13|13|2|2|cell-halign|c>|<cwith|13|13|2|2|cell-valign|c>|<cwith|10|13|2|2|cell-background|pastel
  blue>|<cwith|10|13|2|2|cell-halign|c>|<cwith|10|13|2|2|cell-valign|c>|<cwith|10|10|2|2|cell-halign|c>|<cwith|10|10|2|2|cell-valign|c>|<cwith|11|11|2|2|cell-halign|c>|<cwith|11|11|2|2|cell-valign|c>|<cwith|12|12|2|2|cell-halign|c>|<cwith|12|12|2|2|cell-valign|c>|<cwith|13|13|2|2|cell-halign|c>|<cwith|13|13|2|2|cell-valign|c>|<cwith|10|13|2|2|cell-background|pastel
  blue>|<cwith|10|10|2|2|cell-bborder|0ln>|<cwith|11|11|2|2|cell-tborder|0ln>|<cwith|10|10|2|2|cell-tborder|0ln>|<cwith|14|17|2|2|cell-halign|c>|<cwith|14|17|2|2|cell-valign|c>|<cwith|14|14|2|2|cell-halign|c>|<cwith|14|14|2|2|cell-valign|c>|<cwith|15|15|2|2|cell-halign|c>|<cwith|15|15|2|2|cell-valign|c>|<cwith|16|16|2|2|cell-halign|c>|<cwith|16|16|2|2|cell-valign|c>|<cwith|17|17|2|2|cell-halign|c>|<cwith|17|17|2|2|cell-valign|c>|<cwith|17|17|2|2|cell-halign|c>|<cwith|17|17|2|2|cell-valign|c>|<cwith|14|17|2|2|cell-background|pastel
  blue>|<cwith|14|17|2|2|cell-halign|c>|<cwith|14|17|2|2|cell-valign|c>|<cwith|14|14|2|2|cell-halign|c>|<cwith|14|14|2|2|cell-valign|c>|<cwith|15|15|2|2|cell-halign|c>|<cwith|15|15|2|2|cell-valign|c>|<cwith|16|16|2|2|cell-halign|c>|<cwith|16|16|2|2|cell-valign|c>|<cwith|17|17|2|2|cell-halign|c>|<cwith|17|17|2|2|cell-valign|c>|<cwith|14|17|2|2|cell-background|pastel
  blue>|<cwith|14|14|2|2|cell-bborder|0ln>|<cwith|15|15|2|2|cell-tborder|0ln>|<cwith|14|14|2|2|cell-tborder|0ln>|<cwith|18|21|2|2|cell-halign|c>|<cwith|18|21|2|2|cell-valign|c>|<cwith|18|18|2|2|cell-halign|c>|<cwith|18|18|2|2|cell-valign|c>|<cwith|19|19|2|2|cell-halign|c>|<cwith|19|19|2|2|cell-valign|c>|<cwith|20|20|2|2|cell-halign|c>|<cwith|20|20|2|2|cell-valign|c>|<cwith|21|21|2|2|cell-halign|c>|<cwith|21|21|2|2|cell-valign|c>|<cwith|21|21|2|2|cell-halign|c>|<cwith|21|21|2|2|cell-valign|c>|<cwith|18|21|2|2|cell-background|pastel
  blue>|<cwith|18|21|2|2|cell-halign|c>|<cwith|18|21|2|2|cell-valign|c>|<cwith|18|18|2|2|cell-halign|c>|<cwith|18|18|2|2|cell-valign|c>|<cwith|19|19|2|2|cell-halign|c>|<cwith|19|19|2|2|cell-valign|c>|<cwith|20|20|2|2|cell-halign|c>|<cwith|20|20|2|2|cell-valign|c>|<cwith|21|21|2|2|cell-halign|c>|<cwith|21|21|2|2|cell-valign|c>|<cwith|18|21|2|2|cell-background|pastel
  blue>|<cwith|18|18|2|2|cell-bborder|0ln>|<cwith|19|19|2|2|cell-tborder|0ln>|<cwith|18|18|2|2|cell-tborder|0ln>|<cwith|22|25|2|2|cell-halign|c>|<cwith|22|25|2|2|cell-valign|c>|<cwith|22|22|2|2|cell-halign|c>|<cwith|22|22|2|2|cell-valign|c>|<cwith|23|23|2|2|cell-halign|c>|<cwith|23|23|2|2|cell-valign|c>|<cwith|24|24|2|2|cell-halign|c>|<cwith|24|24|2|2|cell-valign|c>|<cwith|25|25|2|2|cell-halign|c>|<cwith|25|25|2|2|cell-valign|c>|<cwith|25|25|2|2|cell-halign|c>|<cwith|25|25|2|2|cell-valign|c>|<cwith|22|25|2|2|cell-background|pastel
  blue>|<cwith|22|25|2|2|cell-halign|c>|<cwith|22|25|2|2|cell-valign|c>|<cwith|22|22|2|2|cell-halign|c>|<cwith|22|22|2|2|cell-valign|c>|<cwith|23|23|2|2|cell-halign|c>|<cwith|23|23|2|2|cell-valign|c>|<cwith|24|24|2|2|cell-halign|c>|<cwith|24|24|2|2|cell-valign|c>|<cwith|25|25|2|2|cell-halign|c>|<cwith|25|25|2|2|cell-valign|c>|<cwith|22|25|2|2|cell-background|pastel
  blue>|<cwith|22|22|2|2|cell-bborder|0ln>|<cwith|23|23|2|2|cell-tborder|0ln>|<cwith|22|22|2|2|cell-tborder|0ln>|<cwith|26|29|2|2|cell-halign|c>|<cwith|26|29|2|2|cell-valign|c>|<cwith|26|26|2|2|cell-halign|c>|<cwith|26|26|2|2|cell-valign|c>|<cwith|27|27|2|2|cell-halign|c>|<cwith|27|27|2|2|cell-valign|c>|<cwith|28|28|2|2|cell-halign|c>|<cwith|28|28|2|2|cell-valign|c>|<cwith|29|29|2|2|cell-halign|c>|<cwith|29|29|2|2|cell-valign|c>|<cwith|29|29|2|2|cell-halign|c>|<cwith|29|29|2|2|cell-valign|c>|<cwith|26|29|2|2|cell-background|pastel
  blue>|<cwith|26|29|2|2|cell-halign|c>|<cwith|26|29|2|2|cell-valign|c>|<cwith|26|26|2|2|cell-halign|c>|<cwith|26|26|2|2|cell-valign|c>|<cwith|27|27|2|2|cell-halign|c>|<cwith|27|27|2|2|cell-valign|c>|<cwith|28|28|2|2|cell-halign|c>|<cwith|28|28|2|2|cell-valign|c>|<cwith|29|29|2|2|cell-halign|c>|<cwith|29|29|2|2|cell-valign|c>|<cwith|26|29|2|2|cell-background|pastel
  blue>|<cwith|26|26|2|2|cell-bborder|0ln>|<cwith|27|27|2|2|cell-tborder|0ln>|<cwith|26|26|2|2|cell-tborder|0ln>|<cwith|30|33|2|2|cell-halign|c>|<cwith|30|33|2|2|cell-valign|c>|<cwith|30|30|2|2|cell-halign|c>|<cwith|30|30|2|2|cell-valign|c>|<cwith|31|31|2|2|cell-halign|c>|<cwith|31|31|2|2|cell-valign|c>|<cwith|32|32|2|2|cell-halign|c>|<cwith|32|32|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|30|33|2|2|cell-background|pastel
  blue>|<cwith|30|33|2|2|cell-halign|c>|<cwith|30|33|2|2|cell-valign|c>|<cwith|30|30|2|2|cell-halign|c>|<cwith|30|30|2|2|cell-valign|c>|<cwith|31|31|2|2|cell-halign|c>|<cwith|31|31|2|2|cell-valign|c>|<cwith|32|32|2|2|cell-halign|c>|<cwith|32|32|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|30|33|2|2|cell-background|pastel
  blue>|<cwith|30|30|2|2|cell-bborder|0ln>|<cwith|31|31|2|2|cell-tborder|0ln>|<cwith|30|30|2|2|cell-tborder|0ln>|<cwith|2|17|3|3|cell-halign|c>|<cwith|2|17|3|3|cell-valign|c>|<cwith|2|17|3|3|cell-background|pastel
  blue>|<cwith|2|2|3|3|cell-tborder|1ln>|<cwith|18|33|3|3|cell-halign|c>|<cwith|18|33|3|3|cell-valign|c>|<cwith|18|33|3|3|cell-background|pastel
  blue>|<cwith|18|18|3|3|cell-tborder|0ln>|<cwith|17|17|3|3|cell-bborder|0ln>|<cwith|18|18|3|3|cell-bborder|0ln>|<cwith|19|19|3|3|cell-tborder|0ln>|<cwith|18|18|3|3|cell-rborder|0ln>|<cwith|18|18|4|4|cell-lborder|0ln>|<cwith|2|33|3|3|cell-halign|c>|<cwith|2|33|3|3|cell-valign|c>|<cwith|2|2|3|3|cell-halign|c>|<cwith|2|2|3|3|cell-valign|c>|<cwith|3|3|3|3|cell-halign|c>|<cwith|3|3|3|3|cell-valign|c>|<cwith|4|4|3|3|cell-halign|c>|<cwith|4|4|3|3|cell-valign|c>|<cwith|5|5|3|3|cell-halign|c>|<cwith|5|5|3|3|cell-valign|c>|<cwith|6|6|3|3|cell-halign|c>|<cwith|6|6|3|3|cell-valign|c>|<cwith|7|7|3|3|cell-halign|c>|<cwith|7|7|3|3|cell-valign|c>|<cwith|8|8|3|3|cell-halign|c>|<cwith|8|8|3|3|cell-valign|c>|<cwith|9|15|3|3|cell-halign|c>|<cwith|9|15|3|3|cell-valign|c>|<cwith|9|9|3|3|cell-halign|c>|<cwith|9|9|3|3|cell-valign|c>|<cwith|10|10|3|3|cell-halign|c>|<cwith|10|10|3|3|cell-valign|c>|<cwith|11|11|3|3|cell-halign|c>|<cwith|11|11|3|3|cell-valign|c>|<cwith|12|12|3|3|cell-halign|c>|<cwith|12|12|3|3|cell-valign|c>|<cwith|13|13|3|3|cell-halign|c>|<cwith|13|13|3|3|cell-valign|c>|<cwith|14|14|3|3|cell-halign|c>|<cwith|14|14|3|3|cell-valign|c>|<cwith|15|15|3|3|cell-halign|c>|<cwith|15|15|3|3|cell-valign|c>|<cwith|16|22|3|3|cell-halign|c>|<cwith|16|22|3|3|cell-valign|c>|<cwith|16|16|3|3|cell-halign|c>|<cwith|16|16|3|3|cell-valign|c>|<cwith|17|17|3|3|cell-halign|c>|<cwith|17|17|3|3|cell-valign|c>|<cwith|18|18|3|3|cell-halign|c>|<cwith|18|18|3|3|cell-valign|c>|<cwith|19|19|3|3|cell-halign|c>|<cwith|19|19|3|3|cell-valign|c>|<cwith|20|20|3|3|cell-halign|c>|<cwith|20|20|3|3|cell-valign|c>|<cwith|21|21|3|3|cell-halign|c>|<cwith|21|21|3|3|cell-valign|c>|<cwith|22|22|3|3|cell-halign|c>|<cwith|22|22|3|3|cell-valign|c>|<cwith|23|29|3|3|cell-halign|c>|<cwith|23|29|3|3|cell-valign|c>|<cwith|23|23|3|3|cell-halign|c>|<cwith|23|23|3|3|cell-valign|c>|<cwith|24|24|3|3|cell-halign|c>|<cwith|24|24|3|3|cell-valign|c>|<cwith|25|25|3|3|cell-halign|c>|<cwith|25|25|3|3|cell-valign|c>|<cwith|26|26|3|3|cell-halign|c>|<cwith|26|26|3|3|cell-valign|c>|<cwith|27|27|3|3|cell-halign|c>|<cwith|27|27|3|3|cell-valign|c>|<cwith|28|28|3|3|cell-halign|c>|<cwith|28|28|3|3|cell-valign|c>|<cwith|29|29|3|3|cell-halign|c>|<cwith|29|29|3|3|cell-valign|c>|<cwith|30|32|3|3|cell-halign|c>|<cwith|30|32|3|3|cell-valign|c>|<cwith|30|32|3|3|cell-halign|c>|<cwith|30|32|3|3|cell-valign|c>|<cwith|30|30|3|3|cell-halign|c>|<cwith|30|30|3|3|cell-valign|c>|<cwith|31|31|3|3|cell-halign|c>|<cwith|31|31|3|3|cell-valign|c>|<cwith|32|32|3|3|cell-halign|c>|<cwith|32|32|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|2|33|3|3|cell-background|pastel
  blue>|<cwith|33|33|3|3|cell-bborder|1ln>|<cwith|2|2|3|3|cell-tborder|1ln>|<cwith|5|6|3|3|cell-rborder|0ln>|<cwith|5|5|3|3|cell-rborder|0ln>|<cwith|2|33|3|3|cell-halign|c>|<cwith|2|33|3|3|cell-valign|c>|<cwith|2|2|3|3|cell-halign|c>|<cwith|2|2|3|3|cell-valign|c>|<cwith|3|3|3|3|cell-halign|c>|<cwith|3|3|3|3|cell-valign|c>|<cwith|4|4|3|3|cell-halign|c>|<cwith|4|4|3|3|cell-valign|c>|<cwith|5|5|3|3|cell-halign|c>|<cwith|5|5|3|3|cell-valign|c>|<cwith|6|6|3|3|cell-halign|c>|<cwith|6|6|3|3|cell-valign|c>|<cwith|7|7|3|3|cell-halign|c>|<cwith|7|7|3|3|cell-valign|c>|<cwith|8|8|3|3|cell-halign|c>|<cwith|8|8|3|3|cell-valign|c>|<cwith|9|15|3|3|cell-halign|c>|<cwith|9|15|3|3|cell-valign|c>|<cwith|9|9|3|3|cell-halign|c>|<cwith|9|9|3|3|cell-valign|c>|<cwith|10|10|3|3|cell-halign|c>|<cwith|10|10|3|3|cell-valign|c>|<cwith|11|11|3|3|cell-halign|c>|<cwith|11|11|3|3|cell-valign|c>|<cwith|12|12|3|3|cell-halign|c>|<cwith|12|12|3|3|cell-valign|c>|<cwith|13|13|3|3|cell-halign|c>|<cwith|13|13|3|3|cell-valign|c>|<cwith|14|14|3|3|cell-halign|c>|<cwith|14|14|3|3|cell-valign|c>|<cwith|15|15|3|3|cell-halign|c>|<cwith|15|15|3|3|cell-valign|c>|<cwith|16|22|3|3|cell-halign|c>|<cwith|16|22|3|3|cell-valign|c>|<cwith|16|16|3|3|cell-halign|c>|<cwith|16|16|3|3|cell-valign|c>|<cwith|17|17|3|3|cell-halign|c>|<cwith|17|17|3|3|cell-valign|c>|<cwith|18|18|3|3|cell-halign|c>|<cwith|18|18|3|3|cell-valign|c>|<cwith|19|19|3|3|cell-halign|c>|<cwith|19|19|3|3|cell-valign|c>|<cwith|20|20|3|3|cell-halign|c>|<cwith|20|20|3|3|cell-valign|c>|<cwith|21|21|3|3|cell-halign|c>|<cwith|21|21|3|3|cell-valign|c>|<cwith|22|22|3|3|cell-halign|c>|<cwith|22|22|3|3|cell-valign|c>|<cwith|23|29|3|3|cell-halign|c>|<cwith|23|29|3|3|cell-valign|c>|<cwith|23|23|3|3|cell-halign|c>|<cwith|23|23|3|3|cell-valign|c>|<cwith|24|24|3|3|cell-halign|c>|<cwith|24|24|3|3|cell-valign|c>|<cwith|25|25|3|3|cell-halign|c>|<cwith|25|25|3|3|cell-valign|c>|<cwith|26|26|3|3|cell-halign|c>|<cwith|26|26|3|3|cell-valign|c>|<cwith|27|27|3|3|cell-halign|c>|<cwith|27|27|3|3|cell-valign|c>|<cwith|28|28|3|3|cell-halign|c>|<cwith|28|28|3|3|cell-valign|c>|<cwith|29|29|3|3|cell-halign|c>|<cwith|29|29|3|3|cell-valign|c>|<cwith|30|32|3|3|cell-halign|c>|<cwith|30|32|3|3|cell-valign|c>|<cwith|30|32|3|3|cell-halign|c>|<cwith|30|32|3|3|cell-valign|c>|<cwith|30|30|3|3|cell-halign|c>|<cwith|30|30|3|3|cell-valign|c>|<cwith|31|31|3|3|cell-halign|c>|<cwith|31|31|3|3|cell-valign|c>|<cwith|32|32|3|3|cell-halign|c>|<cwith|32|32|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|2|33|3|3|cell-background|pastel
  blue>|<cwith|33|33|3|3|cell-bborder|1ln>|<cwith|2|2|3|3|cell-tborder|1ln>|<cwith|6|9|3|3|cell-halign|c>|<cwith|6|9|3|3|cell-valign|c>|<cwith|6|6|3|3|cell-halign|c>|<cwith|6|6|3|3|cell-valign|c>|<cwith|7|7|3|3|cell-halign|c>|<cwith|7|7|3|3|cell-valign|c>|<cwith|8|8|3|3|cell-halign|c>|<cwith|8|8|3|3|cell-valign|c>|<cwith|9|9|3|3|cell-halign|c>|<cwith|9|9|3|3|cell-valign|c>|<cwith|6|9|3|3|cell-background|pastel
  blue>|<cwith|6|6|3|3|cell-bborder|0ln>|<cwith|7|7|3|3|cell-tborder|0ln>|<cwith|5|6|3|3|cell-rborder|0ln>|<cwith|5|5|3|3|cell-tborder|0ln>|<cwith|4|4|3|3|cell-bborder|0ln>|<cwith|5|5|3|3|cell-bborder|0ln>|<cwith|6|6|3|3|cell-tborder|0ln>|<cwith|5|5|3|3|cell-rborder|0ln>|<cwith|10|13|3|3|cell-halign|c>|<cwith|10|13|3|3|cell-valign|c>|<cwith|10|10|3|3|cell-halign|c>|<cwith|10|10|3|3|cell-valign|c>|<cwith|11|11|3|3|cell-halign|c>|<cwith|11|11|3|3|cell-valign|c>|<cwith|12|12|3|3|cell-halign|c>|<cwith|12|12|3|3|cell-valign|c>|<cwith|13|13|3|3|cell-halign|c>|<cwith|13|13|3|3|cell-valign|c>|<cwith|13|13|3|3|cell-halign|c>|<cwith|13|13|3|3|cell-valign|c>|<cwith|10|13|3|3|cell-background|pastel
  blue>|<cwith|10|13|3|3|cell-halign|c>|<cwith|10|13|3|3|cell-valign|c>|<cwith|10|10|3|3|cell-halign|c>|<cwith|10|10|3|3|cell-valign|c>|<cwith|11|11|3|3|cell-halign|c>|<cwith|11|11|3|3|cell-valign|c>|<cwith|12|12|3|3|cell-halign|c>|<cwith|12|12|3|3|cell-valign|c>|<cwith|13|13|3|3|cell-halign|c>|<cwith|13|13|3|3|cell-valign|c>|<cwith|10|13|3|3|cell-background|pastel
  blue>|<cwith|10|10|3|3|cell-bborder|0ln>|<cwith|11|11|3|3|cell-tborder|0ln>|<cwith|10|10|3|3|cell-rborder|0ln>|<cwith|10|10|3|3|cell-tborder|0ln>|<cwith|14|17|3|3|cell-halign|c>|<cwith|14|17|3|3|cell-valign|c>|<cwith|14|14|3|3|cell-halign|c>|<cwith|14|14|3|3|cell-valign|c>|<cwith|15|15|3|3|cell-halign|c>|<cwith|15|15|3|3|cell-valign|c>|<cwith|16|16|3|3|cell-halign|c>|<cwith|16|16|3|3|cell-valign|c>|<cwith|17|17|3|3|cell-halign|c>|<cwith|17|17|3|3|cell-valign|c>|<cwith|17|17|3|3|cell-halign|c>|<cwith|17|17|3|3|cell-valign|c>|<cwith|14|17|3|3|cell-background|pastel
  blue>|<cwith|14|17|3|3|cell-halign|c>|<cwith|14|17|3|3|cell-valign|c>|<cwith|14|14|3|3|cell-halign|c>|<cwith|14|14|3|3|cell-valign|c>|<cwith|15|15|3|3|cell-halign|c>|<cwith|15|15|3|3|cell-valign|c>|<cwith|16|16|3|3|cell-halign|c>|<cwith|16|16|3|3|cell-valign|c>|<cwith|17|17|3|3|cell-halign|c>|<cwith|17|17|3|3|cell-valign|c>|<cwith|14|17|3|3|cell-background|pastel
  blue>|<cwith|14|14|3|3|cell-bborder|0ln>|<cwith|15|15|3|3|cell-tborder|0ln>|<cwith|14|14|3|3|cell-rborder|0ln>|<cwith|14|14|3|3|cell-tborder|0ln>|<cwith|18|21|3|3|cell-halign|c>|<cwith|18|21|3|3|cell-valign|c>|<cwith|18|18|3|3|cell-halign|c>|<cwith|18|18|3|3|cell-valign|c>|<cwith|19|19|3|3|cell-halign|c>|<cwith|19|19|3|3|cell-valign|c>|<cwith|20|20|3|3|cell-halign|c>|<cwith|20|20|3|3|cell-valign|c>|<cwith|21|21|3|3|cell-halign|c>|<cwith|21|21|3|3|cell-valign|c>|<cwith|21|21|3|3|cell-halign|c>|<cwith|21|21|3|3|cell-valign|c>|<cwith|18|21|3|3|cell-background|pastel
  blue>|<cwith|18|21|3|3|cell-halign|c>|<cwith|18|21|3|3|cell-valign|c>|<cwith|18|18|3|3|cell-halign|c>|<cwith|18|18|3|3|cell-valign|c>|<cwith|19|19|3|3|cell-halign|c>|<cwith|19|19|3|3|cell-valign|c>|<cwith|20|20|3|3|cell-halign|c>|<cwith|20|20|3|3|cell-valign|c>|<cwith|21|21|3|3|cell-halign|c>|<cwith|21|21|3|3|cell-valign|c>|<cwith|18|21|3|3|cell-background|pastel
  blue>|<cwith|18|18|3|3|cell-bborder|0ln>|<cwith|19|19|3|3|cell-tborder|0ln>|<cwith|18|18|3|3|cell-tborder|0ln>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|22|3|3|cell-halign|c>|<cwith|22|22|3|3|cell-valign|c>|<cwith|23|23|3|3|cell-halign|c>|<cwith|23|23|3|3|cell-valign|c>|<cwith|24|24|3|3|cell-halign|c>|<cwith|24|24|3|3|cell-valign|c>|<cwith|25|25|3|3|cell-halign|c>|<cwith|25|25|3|3|cell-valign|c>|<cwith|25|25|3|3|cell-halign|c>|<cwith|25|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-background|pastel
  blue>|<cwith|22|25|3|3|cell-halign|c>|<cwith|22|25|3|3|cell-valign|c>|<cwith|22|22|3|3|cell-halign|c>|<cwith|22|22|3|3|cell-valign|c>|<cwith|23|23|3|3|cell-halign|c>|<cwith|23|23|3|3|cell-valign|c>|<cwith|24|24|3|3|cell-halign|c>|<cwith|24|24|3|3|cell-valign|c>|<cwith|25|25|3|3|cell-halign|c>|<cwith|25|25|3|3|cell-valign|c>|<cwith|22|25|3|3|cell-background|pastel
  blue>|<cwith|22|22|3|3|cell-bborder|0ln>|<cwith|23|23|3|3|cell-tborder|0ln>|<cwith|22|22|3|3|cell-rborder|0ln>|<cwith|22|22|3|3|cell-tborder|0ln>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|26|3|3|cell-halign|c>|<cwith|26|26|3|3|cell-valign|c>|<cwith|27|27|3|3|cell-halign|c>|<cwith|27|27|3|3|cell-valign|c>|<cwith|28|28|3|3|cell-halign|c>|<cwith|28|28|3|3|cell-valign|c>|<cwith|29|29|3|3|cell-halign|c>|<cwith|29|29|3|3|cell-valign|c>|<cwith|29|29|3|3|cell-halign|c>|<cwith|29|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-background|pastel
  blue>|<cwith|26|29|3|3|cell-halign|c>|<cwith|26|29|3|3|cell-valign|c>|<cwith|26|26|3|3|cell-halign|c>|<cwith|26|26|3|3|cell-valign|c>|<cwith|27|27|3|3|cell-halign|c>|<cwith|27|27|3|3|cell-valign|c>|<cwith|28|28|3|3|cell-halign|c>|<cwith|28|28|3|3|cell-valign|c>|<cwith|29|29|3|3|cell-halign|c>|<cwith|29|29|3|3|cell-valign|c>|<cwith|26|29|3|3|cell-background|pastel
  blue>|<cwith|26|26|3|3|cell-bborder|0ln>|<cwith|27|27|3|3|cell-tborder|0ln>|<cwith|26|26|3|3|cell-rborder|0ln>|<cwith|26|26|3|3|cell-tborder|0ln>|<cwith|30|33|3|3|cell-halign|c>|<cwith|30|33|3|3|cell-valign|c>|<cwith|30|30|3|3|cell-halign|c>|<cwith|30|30|3|3|cell-valign|c>|<cwith|31|31|3|3|cell-halign|c>|<cwith|31|31|3|3|cell-valign|c>|<cwith|32|32|3|3|cell-halign|c>|<cwith|32|32|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|30|33|3|3|cell-background|pastel
  blue>|<cwith|30|33|3|3|cell-halign|c>|<cwith|30|33|3|3|cell-valign|c>|<cwith|30|30|3|3|cell-halign|c>|<cwith|30|30|3|3|cell-valign|c>|<cwith|31|31|3|3|cell-halign|c>|<cwith|31|31|3|3|cell-valign|c>|<cwith|32|32|3|3|cell-halign|c>|<cwith|32|32|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|30|33|3|3|cell-background|pastel
  blue>|<cwith|30|30|3|3|cell-bborder|0ln>|<cwith|31|31|3|3|cell-tborder|0ln>|<cwith|30|30|3|3|cell-rborder|0ln>|<cwith|30|30|3|3|cell-tborder|0ln>|<cwith|18|18|3|3|cell-rborder|0ln>|<cwith|2|33|3|3|cell-halign|c>|<cwith|2|33|3|3|cell-valign|c>|<cwith|2|2|3|3|cell-halign|c>|<cwith|2|2|3|3|cell-valign|c>|<cwith|3|3|3|3|cell-halign|c>|<cwith|3|3|3|3|cell-valign|c>|<cwith|4|4|3|3|cell-halign|c>|<cwith|4|4|3|3|cell-valign|c>|<cwith|5|5|3|3|cell-halign|c>|<cwith|5|5|3|3|cell-valign|c>|<cwith|6|6|3|3|cell-halign|c>|<cwith|6|6|3|3|cell-valign|c>|<cwith|7|7|3|3|cell-halign|c>|<cwith|7|7|3|3|cell-valign|c>|<cwith|8|8|3|3|cell-halign|c>|<cwith|8|8|3|3|cell-valign|c>|<cwith|9|15|3|3|cell-halign|c>|<cwith|9|15|3|3|cell-valign|c>|<cwith|9|9|3|3|cell-halign|c>|<cwith|9|9|3|3|cell-valign|c>|<cwith|10|10|3|3|cell-halign|c>|<cwith|10|10|3|3|cell-valign|c>|<cwith|11|11|3|3|cell-halign|c>|<cwith|11|11|3|3|cell-valign|c>|<cwith|12|12|3|3|cell-halign|c>|<cwith|12|12|3|3|cell-valign|c>|<cwith|13|13|3|3|cell-halign|c>|<cwith|13|13|3|3|cell-valign|c>|<cwith|14|14|3|3|cell-halign|c>|<cwith|14|14|3|3|cell-valign|c>|<cwith|15|15|3|3|cell-halign|c>|<cwith|15|15|3|3|cell-valign|c>|<cwith|16|22|3|3|cell-halign|c>|<cwith|16|22|3|3|cell-valign|c>|<cwith|16|16|3|3|cell-halign|c>|<cwith|16|16|3|3|cell-valign|c>|<cwith|17|17|3|3|cell-halign|c>|<cwith|17|17|3|3|cell-valign|c>|<cwith|18|18|3|3|cell-halign|c>|<cwith|18|18|3|3|cell-valign|c>|<cwith|19|19|3|3|cell-halign|c>|<cwith|19|19|3|3|cell-valign|c>|<cwith|20|20|3|3|cell-halign|c>|<cwith|20|20|3|3|cell-valign|c>|<cwith|21|21|3|3|cell-halign|c>|<cwith|21|21|3|3|cell-valign|c>|<cwith|22|22|3|3|cell-halign|c>|<cwith|22|22|3|3|cell-valign|c>|<cwith|23|29|3|3|cell-halign|c>|<cwith|23|29|3|3|cell-valign|c>|<cwith|23|23|3|3|cell-halign|c>|<cwith|23|23|3|3|cell-valign|c>|<cwith|24|24|3|3|cell-halign|c>|<cwith|24|24|3|3|cell-valign|c>|<cwith|25|25|3|3|cell-halign|c>|<cwith|25|25|3|3|cell-valign|c>|<cwith|26|26|3|3|cell-halign|c>|<cwith|26|26|3|3|cell-valign|c>|<cwith|27|27|3|3|cell-halign|c>|<cwith|27|27|3|3|cell-valign|c>|<cwith|28|28|3|3|cell-halign|c>|<cwith|28|28|3|3|cell-valign|c>|<cwith|29|29|3|3|cell-halign|c>|<cwith|29|29|3|3|cell-valign|c>|<cwith|30|32|3|3|cell-halign|c>|<cwith|30|32|3|3|cell-valign|c>|<cwith|30|32|3|3|cell-halign|c>|<cwith|30|32|3|3|cell-valign|c>|<cwith|30|30|3|3|cell-halign|c>|<cwith|30|30|3|3|cell-valign|c>|<cwith|31|31|3|3|cell-halign|c>|<cwith|31|31|3|3|cell-valign|c>|<cwith|32|32|3|3|cell-halign|c>|<cwith|32|32|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|33|33|3|3|cell-halign|c>|<cwith|33|33|3|3|cell-valign|c>|<cwith|2|33|3|3|cell-background|pastel
  blue>|<cwith|33|33|3|3|cell-bborder|1ln>|<cwith|2|2|3|3|cell-tborder|1ln>|<cwith|2|2|2|2|cell-tborder|1ln>|<cwith|1|1|2|2|cell-bborder|1ln>|<cwith|33|33|2|2|cell-bborder|1ln>|<cwith|2|-1|2|2|cell-rborder|0ln>|<cwith|2|-1|3|3|cell-lborder|0ln>|<cwith|2|33|1|1|cell-halign|c>|<cwith|2|33|1|1|cell-valign|c>|<cwith|2|2|1|1|cell-halign|c>|<cwith|2|2|1|1|cell-valign|c>|<cwith|3|3|1|1|cell-halign|c>|<cwith|3|3|1|1|cell-valign|c>|<cwith|4|4|1|1|cell-halign|c>|<cwith|4|4|1|1|cell-valign|c>|<cwith|5|5|1|1|cell-halign|c>|<cwith|5|5|1|1|cell-valign|c>|<cwith|6|6|1|1|cell-halign|c>|<cwith|6|6|1|1|cell-valign|c>|<cwith|7|7|1|1|cell-halign|c>|<cwith|7|7|1|1|cell-valign|c>|<cwith|8|8|1|1|cell-halign|c>|<cwith|8|8|1|1|cell-valign|c>|<cwith|9|15|1|1|cell-halign|c>|<cwith|9|15|1|1|cell-valign|c>|<cwith|9|9|1|1|cell-halign|c>|<cwith|9|9|1|1|cell-valign|c>|<cwith|10|10|1|1|cell-halign|c>|<cwith|10|10|1|1|cell-valign|c>|<cwith|11|11|1|1|cell-halign|c>|<cwith|11|11|1|1|cell-valign|c>|<cwith|12|12|1|1|cell-halign|c>|<cwith|12|12|1|1|cell-valign|c>|<cwith|13|13|1|1|cell-halign|c>|<cwith|13|13|1|1|cell-valign|c>|<cwith|14|14|1|1|cell-halign|c>|<cwith|14|14|1|1|cell-valign|c>|<cwith|15|15|1|1|cell-halign|c>|<cwith|15|15|1|1|cell-valign|c>|<cwith|16|22|1|1|cell-halign|c>|<cwith|16|22|1|1|cell-valign|c>|<cwith|16|16|1|1|cell-halign|c>|<cwith|16|16|1|1|cell-valign|c>|<cwith|17|17|1|1|cell-halign|c>|<cwith|17|17|1|1|cell-valign|c>|<cwith|18|18|1|1|cell-halign|c>|<cwith|18|18|1|1|cell-valign|c>|<cwith|19|19|1|1|cell-halign|c>|<cwith|19|19|1|1|cell-valign|c>|<cwith|20|20|1|1|cell-halign|c>|<cwith|20|20|1|1|cell-valign|c>|<cwith|21|21|1|1|cell-halign|c>|<cwith|21|21|1|1|cell-valign|c>|<cwith|22|22|1|1|cell-halign|c>|<cwith|22|22|1|1|cell-valign|c>|<cwith|23|29|1|1|cell-halign|c>|<cwith|23|29|1|1|cell-valign|c>|<cwith|23|23|1|1|cell-halign|c>|<cwith|23|23|1|1|cell-valign|c>|<cwith|24|24|1|1|cell-halign|c>|<cwith|24|24|1|1|cell-valign|c>|<cwith|25|25|1|1|cell-halign|c>|<cwith|25|25|1|1|cell-valign|c>|<cwith|26|26|1|1|cell-halign|c>|<cwith|26|26|1|1|cell-valign|c>|<cwith|27|27|1|1|cell-halign|c>|<cwith|27|27|1|1|cell-valign|c>|<cwith|28|28|1|1|cell-halign|c>|<cwith|28|28|1|1|cell-valign|c>|<cwith|29|29|1|1|cell-halign|c>|<cwith|29|29|1|1|cell-valign|c>|<cwith|30|32|1|1|cell-halign|c>|<cwith|30|32|1|1|cell-valign|c>|<cwith|30|32|1|1|cell-halign|c>|<cwith|30|32|1|1|cell-valign|c>|<cwith|30|30|1|1|cell-halign|c>|<cwith|30|30|1|1|cell-valign|c>|<cwith|31|31|1|1|cell-halign|c>|<cwith|31|31|1|1|cell-valign|c>|<cwith|32|32|1|1|cell-halign|c>|<cwith|32|32|1|1|cell-valign|c>|<cwith|33|33|1|1|cell-halign|c>|<cwith|33|33|1|1|cell-valign|c>|<cwith|33|33|1|1|cell-halign|c>|<cwith|33|33|1|1|cell-valign|c>|<cwith|33|33|1|1|cell-halign|c>|<cwith|33|33|1|1|cell-valign|c>|<cwith|33|33|1|1|cell-halign|c>|<cwith|33|33|1|1|cell-valign|c>|<cwith|2|33|1|1|cell-background|pastel
  blue>|<cwith|2|33|1|1|cell-halign|c>|<cwith|2|33|1|1|cell-valign|c>|<cwith|2|2|1|1|cell-halign|c>|<cwith|2|2|1|1|cell-valign|c>|<cwith|3|3|1|1|cell-halign|c>|<cwith|3|3|1|1|cell-valign|c>|<cwith|4|4|1|1|cell-halign|c>|<cwith|4|4|1|1|cell-valign|c>|<cwith|5|5|1|1|cell-halign|c>|<cwith|5|5|1|1|cell-valign|c>|<cwith|6|6|1|1|cell-halign|c>|<cwith|6|6|1|1|cell-valign|c>|<cwith|7|7|1|1|cell-halign|c>|<cwith|7|7|1|1|cell-valign|c>|<cwith|8|8|1|1|cell-halign|c>|<cwith|8|8|1|1|cell-valign|c>|<cwith|9|15|1|1|cell-halign|c>|<cwith|9|15|1|1|cell-valign|c>|<cwith|9|9|1|1|cell-halign|c>|<cwith|9|9|1|1|cell-valign|c>|<cwith|10|10|1|1|cell-halign|c>|<cwith|10|10|1|1|cell-valign|c>|<cwith|11|11|1|1|cell-halign|c>|<cwith|11|11|1|1|cell-valign|c>|<cwith|12|12|1|1|cell-halign|c>|<cwith|12|12|1|1|cell-valign|c>|<cwith|13|13|1|1|cell-halign|c>|<cwith|13|13|1|1|cell-valign|c>|<cwith|14|14|1|1|cell-halign|c>|<cwith|14|14|1|1|cell-valign|c>|<cwith|15|15|1|1|cell-halign|c>|<cwith|15|15|1|1|cell-valign|c>|<cwith|16|22|1|1|cell-halign|c>|<cwith|16|22|1|1|cell-valign|c>|<cwith|16|16|1|1|cell-halign|c>|<cwith|16|16|1|1|cell-valign|c>|<cwith|17|17|1|1|cell-halign|c>|<cwith|17|17|1|1|cell-valign|c>|<cwith|18|18|1|1|cell-halign|c>|<cwith|18|18|1|1|cell-valign|c>|<cwith|19|19|1|1|cell-halign|c>|<cwith|19|19|1|1|cell-valign|c>|<cwith|20|20|1|1|cell-halign|c>|<cwith|20|20|1|1|cell-valign|c>|<cwith|21|21|1|1|cell-halign|c>|<cwith|21|21|1|1|cell-valign|c>|<cwith|22|22|1|1|cell-halign|c>|<cwith|22|22|1|1|cell-valign|c>|<cwith|23|29|1|1|cell-halign|c>|<cwith|23|29|1|1|cell-valign|c>|<cwith|23|23|1|1|cell-halign|c>|<cwith|23|23|1|1|cell-valign|c>|<cwith|24|24|1|1|cell-halign|c>|<cwith|24|24|1|1|cell-valign|c>|<cwith|25|25|1|1|cell-halign|c>|<cwith|25|25|1|1|cell-valign|c>|<cwith|26|26|1|1|cell-halign|c>|<cwith|26|26|1|1|cell-valign|c>|<cwith|27|27|1|1|cell-halign|c>|<cwith|27|27|1|1|cell-valign|c>|<cwith|28|28|1|1|cell-halign|c>|<cwith|28|28|1|1|cell-valign|c>|<cwith|29|29|1|1|cell-halign|c>|<cwith|29|29|1|1|cell-valign|c>|<cwith|30|32|1|1|cell-halign|c>|<cwith|30|32|1|1|cell-valign|c>|<cwith|30|32|1|1|cell-halign|c>|<cwith|30|32|1|1|cell-valign|c>|<cwith|30|30|1|1|cell-halign|c>|<cwith|30|30|1|1|cell-valign|c>|<cwith|31|31|1|1|cell-halign|c>|<cwith|31|31|1|1|cell-valign|c>|<cwith|32|32|1|1|cell-halign|c>|<cwith|32|32|1|1|cell-valign|c>|<cwith|33|33|1|1|cell-halign|c>|<cwith|33|33|1|1|cell-valign|c>|<cwith|33|33|1|1|cell-halign|c>|<cwith|33|33|1|1|cell-valign|c>|<cwith|33|33|1|1|cell-halign|c>|<cwith|33|33|1|1|cell-valign|c>|<cwith|33|33|1|1|cell-halign|c>|<cwith|33|33|1|1|cell-valign|c>|<cwith|2|33|1|1|cell-background|pastel
  blue>|<cwith|6|9|1|1|cell-halign|c>|<cwith|6|9|1|1|cell-valign|c>|<cwith|6|6|1|1|cell-halign|c>|<cwith|6|6|1|1|cell-valign|c>|<cwith|7|7|1|1|cell-halign|c>|<cwith|7|7|1|1|cell-valign|c>|<cwith|8|8|1|1|cell-halign|c>|<cwith|8|8|1|1|cell-valign|c>|<cwith|9|9|1|1|cell-halign|c>|<cwith|9|9|1|1|cell-valign|c>|<cwith|6|9|1|1|cell-background|pastel
  blue>|<cwith|6|6|1|1|cell-bborder|0ln>|<cwith|7|7|1|1|cell-tborder|0ln>|<cwith|5|5|1|1|cell-tborder|0ln>|<cwith|4|4|1|1|cell-bborder|0ln>|<cwith|5|5|1|1|cell-bborder|0ln>|<cwith|6|6|1|1|cell-tborder|0ln>|<cwith|10|13|1|1|cell-halign|c>|<cwith|10|13|1|1|cell-valign|c>|<cwith|10|10|1|1|cell-halign|c>|<cwith|10|10|1|1|cell-valign|c>|<cwith|11|11|1|1|cell-halign|c>|<cwith|11|11|1|1|cell-valign|c>|<cwith|12|12|1|1|cell-halign|c>|<cwith|12|12|1|1|cell-valign|c>|<cwith|13|13|1|1|cell-halign|c>|<cwith|13|13|1|1|cell-valign|c>|<cwith|13|13|1|1|cell-halign|c>|<cwith|13|13|1|1|cell-valign|c>|<cwith|10|13|1|1|cell-background|pastel
  blue>|<cwith|10|13|1|1|cell-halign|c>|<cwith|10|13|1|1|cell-valign|c>|<cwith|10|10|1|1|cell-halign|c>|<cwith|10|10|1|1|cell-valign|c>|<cwith|11|11|1|1|cell-halign|c>|<cwith|11|11|1|1|cell-valign|c>|<cwith|12|12|1|1|cell-halign|c>|<cwith|12|12|1|1|cell-valign|c>|<cwith|13|13|1|1|cell-halign|c>|<cwith|13|13|1|1|cell-valign|c>|<cwith|10|13|1|1|cell-background|pastel
  blue>|<cwith|10|10|1|1|cell-bborder|0ln>|<cwith|11|11|1|1|cell-tborder|0ln>|<cwith|10|10|1|1|cell-tborder|0ln>|<cwith|14|17|1|1|cell-halign|c>|<cwith|14|17|1|1|cell-valign|c>|<cwith|14|14|1|1|cell-halign|c>|<cwith|14|14|1|1|cell-valign|c>|<cwith|15|15|1|1|cell-halign|c>|<cwith|15|15|1|1|cell-valign|c>|<cwith|16|16|1|1|cell-halign|c>|<cwith|16|16|1|1|cell-valign|c>|<cwith|17|17|1|1|cell-halign|c>|<cwith|17|17|1|1|cell-valign|c>|<cwith|17|17|1|1|cell-halign|c>|<cwith|17|17|1|1|cell-valign|c>|<cwith|14|17|1|1|cell-background|pastel
  blue>|<cwith|14|17|1|1|cell-halign|c>|<cwith|14|17|1|1|cell-valign|c>|<cwith|14|14|1|1|cell-halign|c>|<cwith|14|14|1|1|cell-valign|c>|<cwith|15|15|1|1|cell-halign|c>|<cwith|15|15|1|1|cell-valign|c>|<cwith|16|16|1|1|cell-halign|c>|<cwith|16|16|1|1|cell-valign|c>|<cwith|17|17|1|1|cell-halign|c>|<cwith|17|17|1|1|cell-valign|c>|<cwith|14|17|1|1|cell-background|pastel
  blue>|<cwith|14|14|1|1|cell-bborder|0ln>|<cwith|15|15|1|1|cell-tborder|0ln>|<cwith|14|14|1|1|cell-tborder|0ln>|<cwith|18|21|1|1|cell-halign|c>|<cwith|18|21|1|1|cell-valign|c>|<cwith|18|18|1|1|cell-halign|c>|<cwith|18|18|1|1|cell-valign|c>|<cwith|19|19|1|1|cell-halign|c>|<cwith|19|19|1|1|cell-valign|c>|<cwith|20|20|1|1|cell-halign|c>|<cwith|20|20|1|1|cell-valign|c>|<cwith|21|21|1|1|cell-halign|c>|<cwith|21|21|1|1|cell-valign|c>|<cwith|21|21|1|1|cell-halign|c>|<cwith|21|21|1|1|cell-valign|c>|<cwith|18|21|1|1|cell-background|pastel
  blue>|<cwith|18|21|1|1|cell-halign|c>|<cwith|18|21|1|1|cell-valign|c>|<cwith|18|18|1|1|cell-halign|c>|<cwith|18|18|1|1|cell-valign|c>|<cwith|19|19|1|1|cell-halign|c>|<cwith|19|19|1|1|cell-valign|c>|<cwith|20|20|1|1|cell-halign|c>|<cwith|20|20|1|1|cell-valign|c>|<cwith|21|21|1|1|cell-halign|c>|<cwith|21|21|1|1|cell-valign|c>|<cwith|18|21|1|1|cell-background|pastel
  blue>|<cwith|18|18|1|1|cell-bborder|0ln>|<cwith|19|19|1|1|cell-tborder|0ln>|<cwith|18|18|1|1|cell-tborder|0ln>|<cwith|22|25|1|1|cell-halign|c>|<cwith|22|25|1|1|cell-valign|c>|<cwith|22|22|1|1|cell-halign|c>|<cwith|22|22|1|1|cell-valign|c>|<cwith|23|23|1|1|cell-halign|c>|<cwith|23|23|1|1|cell-valign|c>|<cwith|24|24|1|1|cell-halign|c>|<cwith|24|24|1|1|cell-valign|c>|<cwith|25|25|1|1|cell-halign|c>|<cwith|25|25|1|1|cell-valign|c>|<cwith|25|25|1|1|cell-halign|c>|<cwith|25|25|1|1|cell-valign|c>|<cwith|22|25|1|1|cell-background|pastel
  blue>|<cwith|22|25|1|1|cell-halign|c>|<cwith|22|25|1|1|cell-valign|c>|<cwith|22|22|1|1|cell-halign|c>|<cwith|22|22|1|1|cell-valign|c>|<cwith|23|23|1|1|cell-halign|c>|<cwith|23|23|1|1|cell-valign|c>|<cwith|24|24|1|1|cell-halign|c>|<cwith|24|24|1|1|cell-valign|c>|<cwith|25|25|1|1|cell-halign|c>|<cwith|25|25|1|1|cell-valign|c>|<cwith|22|25|1|1|cell-background|pastel
  blue>|<cwith|22|22|1|1|cell-bborder|0ln>|<cwith|23|23|1|1|cell-tborder|0ln>|<cwith|22|22|1|1|cell-tborder|0ln>|<cwith|26|29|1|1|cell-halign|c>|<cwith|26|29|1|1|cell-valign|c>|<cwith|26|26|1|1|cell-halign|c>|<cwith|26|26|1|1|cell-valign|c>|<cwith|27|27|1|1|cell-halign|c>|<cwith|27|27|1|1|cell-valign|c>|<cwith|28|28|1|1|cell-halign|c>|<cwith|28|28|1|1|cell-valign|c>|<cwith|29|29|1|1|cell-halign|c>|<cwith|29|29|1|1|cell-valign|c>|<cwith|29|29|1|1|cell-halign|c>|<cwith|29|29|1|1|cell-valign|c>|<cwith|26|29|1|1|cell-background|pastel
  blue>|<cwith|26|29|1|1|cell-halign|c>|<cwith|26|29|1|1|cell-valign|c>|<cwith|26|26|1|1|cell-halign|c>|<cwith|26|26|1|1|cell-valign|c>|<cwith|27|27|1|1|cell-halign|c>|<cwith|27|27|1|1|cell-valign|c>|<cwith|28|28|1|1|cell-halign|c>|<cwith|28|28|1|1|cell-valign|c>|<cwith|29|29|1|1|cell-halign|c>|<cwith|29|29|1|1|cell-valign|c>|<cwith|26|29|1|1|cell-background|pastel
  blue>|<cwith|26|26|1|1|cell-bborder|0ln>|<cwith|27|27|1|1|cell-tborder|0ln>|<cwith|26|26|1|1|cell-tborder|0ln>|<cwith|30|33|1|1|cell-halign|c>|<cwith|30|33|1|1|cell-valign|c>|<cwith|30|30|1|1|cell-halign|c>|<cwith|30|30|1|1|cell-valign|c>|<cwith|31|31|1|1|cell-halign|c>|<cwith|31|31|1|1|cell-valign|c>|<cwith|32|32|1|1|cell-halign|c>|<cwith|32|32|1|1|cell-valign|c>|<cwith|33|33|1|1|cell-halign|c>|<cwith|33|33|1|1|cell-valign|c>|<cwith|33|33|1|1|cell-halign|c>|<cwith|33|33|1|1|cell-valign|c>|<cwith|30|33|1|1|cell-background|pastel
  blue>|<cwith|30|33|1|1|cell-halign|c>|<cwith|30|33|1|1|cell-valign|c>|<cwith|30|30|1|1|cell-halign|c>|<cwith|30|30|1|1|cell-valign|c>|<cwith|31|31|1|1|cell-halign|c>|<cwith|31|31|1|1|cell-valign|c>|<cwith|32|32|1|1|cell-halign|c>|<cwith|32|32|1|1|cell-valign|c>|<cwith|33|33|1|1|cell-halign|c>|<cwith|33|33|1|1|cell-valign|c>|<cwith|30|33|1|1|cell-background|pastel
  blue>|<cwith|30|30|1|1|cell-bborder|0ln>|<cwith|31|31|1|1|cell-tborder|0ln>|<cwith|30|30|1|1|cell-tborder|0ln>|<cwith|2|33|2|2|cell-halign|c>|<cwith|2|33|2|2|cell-valign|c>|<cwith|2|2|2|2|cell-halign|c>|<cwith|2|2|2|2|cell-valign|c>|<cwith|3|3|2|2|cell-halign|c>|<cwith|3|3|2|2|cell-valign|c>|<cwith|4|4|2|2|cell-halign|c>|<cwith|4|4|2|2|cell-valign|c>|<cwith|5|5|2|2|cell-halign|c>|<cwith|5|5|2|2|cell-valign|c>|<cwith|6|6|2|2|cell-halign|c>|<cwith|6|6|2|2|cell-valign|c>|<cwith|7|7|2|2|cell-halign|c>|<cwith|7|7|2|2|cell-valign|c>|<cwith|8|8|2|2|cell-halign|c>|<cwith|8|8|2|2|cell-valign|c>|<cwith|9|15|2|2|cell-halign|c>|<cwith|9|15|2|2|cell-valign|c>|<cwith|9|9|2|2|cell-halign|c>|<cwith|9|9|2|2|cell-valign|c>|<cwith|10|10|2|2|cell-halign|c>|<cwith|10|10|2|2|cell-valign|c>|<cwith|11|11|2|2|cell-halign|c>|<cwith|11|11|2|2|cell-valign|c>|<cwith|12|12|2|2|cell-halign|c>|<cwith|12|12|2|2|cell-valign|c>|<cwith|13|13|2|2|cell-halign|c>|<cwith|13|13|2|2|cell-valign|c>|<cwith|14|14|2|2|cell-halign|c>|<cwith|14|14|2|2|cell-valign|c>|<cwith|15|15|2|2|cell-halign|c>|<cwith|15|15|2|2|cell-valign|c>|<cwith|16|22|2|2|cell-halign|c>|<cwith|16|22|2|2|cell-valign|c>|<cwith|16|16|2|2|cell-halign|c>|<cwith|16|16|2|2|cell-valign|c>|<cwith|17|17|2|2|cell-halign|c>|<cwith|17|17|2|2|cell-valign|c>|<cwith|18|18|2|2|cell-halign|c>|<cwith|18|18|2|2|cell-valign|c>|<cwith|19|19|2|2|cell-halign|c>|<cwith|19|19|2|2|cell-valign|c>|<cwith|20|20|2|2|cell-halign|c>|<cwith|20|20|2|2|cell-valign|c>|<cwith|21|21|2|2|cell-halign|c>|<cwith|21|21|2|2|cell-valign|c>|<cwith|22|22|2|2|cell-halign|c>|<cwith|22|22|2|2|cell-valign|c>|<cwith|23|29|2|2|cell-halign|c>|<cwith|23|29|2|2|cell-valign|c>|<cwith|23|23|2|2|cell-halign|c>|<cwith|23|23|2|2|cell-valign|c>|<cwith|24|24|2|2|cell-halign|c>|<cwith|24|24|2|2|cell-valign|c>|<cwith|25|25|2|2|cell-halign|c>|<cwith|25|25|2|2|cell-valign|c>|<cwith|26|26|2|2|cell-halign|c>|<cwith|26|26|2|2|cell-valign|c>|<cwith|27|27|2|2|cell-halign|c>|<cwith|27|27|2|2|cell-valign|c>|<cwith|28|28|2|2|cell-halign|c>|<cwith|28|28|2|2|cell-valign|c>|<cwith|29|29|2|2|cell-halign|c>|<cwith|29|29|2|2|cell-valign|c>|<cwith|30|32|2|2|cell-halign|c>|<cwith|30|32|2|2|cell-valign|c>|<cwith|30|32|2|2|cell-halign|c>|<cwith|30|32|2|2|cell-valign|c>|<cwith|30|30|2|2|cell-halign|c>|<cwith|30|30|2|2|cell-valign|c>|<cwith|31|31|2|2|cell-halign|c>|<cwith|31|31|2|2|cell-valign|c>|<cwith|32|32|2|2|cell-halign|c>|<cwith|32|32|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|2|33|2|2|cell-background|pastel
  blue>|<cwith|33|33|2|2|cell-bborder|1ln>|<cwith|2|2|2|2|cell-tborder|1ln>|<cwith|6|9|2|2|cell-halign|c>|<cwith|6|9|2|2|cell-valign|c>|<cwith|6|6|2|2|cell-halign|c>|<cwith|6|6|2|2|cell-valign|c>|<cwith|7|7|2|2|cell-halign|c>|<cwith|7|7|2|2|cell-valign|c>|<cwith|8|8|2|2|cell-halign|c>|<cwith|8|8|2|2|cell-valign|c>|<cwith|9|9|2|2|cell-halign|c>|<cwith|9|9|2|2|cell-valign|c>|<cwith|6|9|2|2|cell-background|pastel
  blue>|<cwith|6|6|2|2|cell-bborder|0ln>|<cwith|7|7|2|2|cell-tborder|0ln>|<cwith|5|6|2|2|cell-rborder|0ln>|<cwith|5|5|2|2|cell-tborder|0ln>|<cwith|4|4|2|2|cell-bborder|0ln>|<cwith|5|5|2|2|cell-bborder|0ln>|<cwith|6|6|2|2|cell-tborder|0ln>|<cwith|5|5|2|2|cell-rborder|0ln>|<cwith|10|13|2|2|cell-halign|c>|<cwith|10|13|2|2|cell-valign|c>|<cwith|10|10|2|2|cell-halign|c>|<cwith|10|10|2|2|cell-valign|c>|<cwith|11|11|2|2|cell-halign|c>|<cwith|11|11|2|2|cell-valign|c>|<cwith|12|12|2|2|cell-halign|c>|<cwith|12|12|2|2|cell-valign|c>|<cwith|13|13|2|2|cell-halign|c>|<cwith|13|13|2|2|cell-valign|c>|<cwith|13|13|2|2|cell-halign|c>|<cwith|13|13|2|2|cell-valign|c>|<cwith|10|13|2|2|cell-background|pastel
  blue>|<cwith|10|13|2|2|cell-halign|c>|<cwith|10|13|2|2|cell-valign|c>|<cwith|10|10|2|2|cell-halign|c>|<cwith|10|10|2|2|cell-valign|c>|<cwith|11|11|2|2|cell-halign|c>|<cwith|11|11|2|2|cell-valign|c>|<cwith|12|12|2|2|cell-halign|c>|<cwith|12|12|2|2|cell-valign|c>|<cwith|13|13|2|2|cell-halign|c>|<cwith|13|13|2|2|cell-valign|c>|<cwith|10|13|2|2|cell-background|pastel
  blue>|<cwith|10|10|2|2|cell-bborder|0ln>|<cwith|11|11|2|2|cell-tborder|0ln>|<cwith|10|10|2|2|cell-rborder|0ln>|<cwith|10|10|2|2|cell-tborder|0ln>|<cwith|14|17|2|2|cell-halign|c>|<cwith|14|17|2|2|cell-valign|c>|<cwith|14|14|2|2|cell-halign|c>|<cwith|14|14|2|2|cell-valign|c>|<cwith|15|15|2|2|cell-halign|c>|<cwith|15|15|2|2|cell-valign|c>|<cwith|16|16|2|2|cell-halign|c>|<cwith|16|16|2|2|cell-valign|c>|<cwith|17|17|2|2|cell-halign|c>|<cwith|17|17|2|2|cell-valign|c>|<cwith|17|17|2|2|cell-halign|c>|<cwith|17|17|2|2|cell-valign|c>|<cwith|14|17|2|2|cell-background|pastel
  blue>|<cwith|14|17|2|2|cell-halign|c>|<cwith|14|17|2|2|cell-valign|c>|<cwith|14|14|2|2|cell-halign|c>|<cwith|14|14|2|2|cell-valign|c>|<cwith|15|15|2|2|cell-halign|c>|<cwith|15|15|2|2|cell-valign|c>|<cwith|16|16|2|2|cell-halign|c>|<cwith|16|16|2|2|cell-valign|c>|<cwith|17|17|2|2|cell-halign|c>|<cwith|17|17|2|2|cell-valign|c>|<cwith|14|17|2|2|cell-background|pastel
  blue>|<cwith|14|14|2|2|cell-bborder|0ln>|<cwith|15|15|2|2|cell-tborder|0ln>|<cwith|14|14|2|2|cell-rborder|0ln>|<cwith|14|14|2|2|cell-tborder|0ln>|<cwith|18|21|2|2|cell-halign|c>|<cwith|18|21|2|2|cell-valign|c>|<cwith|18|18|2|2|cell-halign|c>|<cwith|18|18|2|2|cell-valign|c>|<cwith|19|19|2|2|cell-halign|c>|<cwith|19|19|2|2|cell-valign|c>|<cwith|20|20|2|2|cell-halign|c>|<cwith|20|20|2|2|cell-valign|c>|<cwith|21|21|2|2|cell-halign|c>|<cwith|21|21|2|2|cell-valign|c>|<cwith|21|21|2|2|cell-halign|c>|<cwith|21|21|2|2|cell-valign|c>|<cwith|18|21|2|2|cell-background|pastel
  blue>|<cwith|18|21|2|2|cell-halign|c>|<cwith|18|21|2|2|cell-valign|c>|<cwith|18|18|2|2|cell-halign|c>|<cwith|18|18|2|2|cell-valign|c>|<cwith|19|19|2|2|cell-halign|c>|<cwith|19|19|2|2|cell-valign|c>|<cwith|20|20|2|2|cell-halign|c>|<cwith|20|20|2|2|cell-valign|c>|<cwith|21|21|2|2|cell-halign|c>|<cwith|21|21|2|2|cell-valign|c>|<cwith|18|21|2|2|cell-background|pastel
  blue>|<cwith|22|25|2|2|cell-halign|c>|<cwith|22|25|2|2|cell-valign|c>|<cwith|22|22|2|2|cell-halign|c>|<cwith|22|22|2|2|cell-valign|c>|<cwith|23|23|2|2|cell-halign|c>|<cwith|23|23|2|2|cell-valign|c>|<cwith|24|24|2|2|cell-halign|c>|<cwith|24|24|2|2|cell-valign|c>|<cwith|25|25|2|2|cell-halign|c>|<cwith|25|25|2|2|cell-valign|c>|<cwith|25|25|2|2|cell-halign|c>|<cwith|25|25|2|2|cell-valign|c>|<cwith|22|25|2|2|cell-background|pastel
  blue>|<cwith|22|25|2|2|cell-halign|c>|<cwith|22|25|2|2|cell-valign|c>|<cwith|22|22|2|2|cell-halign|c>|<cwith|22|22|2|2|cell-valign|c>|<cwith|23|23|2|2|cell-halign|c>|<cwith|23|23|2|2|cell-valign|c>|<cwith|24|24|2|2|cell-halign|c>|<cwith|24|24|2|2|cell-valign|c>|<cwith|25|25|2|2|cell-halign|c>|<cwith|25|25|2|2|cell-valign|c>|<cwith|22|25|2|2|cell-background|pastel
  blue>|<cwith|22|22|2|2|cell-bborder|0ln>|<cwith|23|23|2|2|cell-tborder|0ln>|<cwith|22|22|2|2|cell-rborder|0ln>|<cwith|22|22|2|2|cell-tborder|0ln>|<cwith|26|29|2|2|cell-halign|c>|<cwith|26|29|2|2|cell-valign|c>|<cwith|26|26|2|2|cell-halign|c>|<cwith|26|26|2|2|cell-valign|c>|<cwith|27|27|2|2|cell-halign|c>|<cwith|27|27|2|2|cell-valign|c>|<cwith|28|28|2|2|cell-halign|c>|<cwith|28|28|2|2|cell-valign|c>|<cwith|29|29|2|2|cell-halign|c>|<cwith|29|29|2|2|cell-valign|c>|<cwith|29|29|2|2|cell-halign|c>|<cwith|29|29|2|2|cell-valign|c>|<cwith|26|29|2|2|cell-background|pastel
  blue>|<cwith|26|29|2|2|cell-halign|c>|<cwith|26|29|2|2|cell-valign|c>|<cwith|26|26|2|2|cell-halign|c>|<cwith|26|26|2|2|cell-valign|c>|<cwith|27|27|2|2|cell-halign|c>|<cwith|27|27|2|2|cell-valign|c>|<cwith|28|28|2|2|cell-halign|c>|<cwith|28|28|2|2|cell-valign|c>|<cwith|29|29|2|2|cell-halign|c>|<cwith|29|29|2|2|cell-valign|c>|<cwith|26|29|2|2|cell-background|pastel
  blue>|<cwith|26|26|2|2|cell-bborder|0ln>|<cwith|27|27|2|2|cell-tborder|0ln>|<cwith|26|26|2|2|cell-rborder|0ln>|<cwith|26|26|2|2|cell-tborder|0ln>|<cwith|30|33|2|2|cell-halign|c>|<cwith|30|33|2|2|cell-valign|c>|<cwith|30|30|2|2|cell-halign|c>|<cwith|30|30|2|2|cell-valign|c>|<cwith|31|31|2|2|cell-halign|c>|<cwith|31|31|2|2|cell-valign|c>|<cwith|32|32|2|2|cell-halign|c>|<cwith|32|32|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|30|33|2|2|cell-background|pastel
  blue>|<cwith|30|33|2|2|cell-halign|c>|<cwith|30|33|2|2|cell-valign|c>|<cwith|30|30|2|2|cell-halign|c>|<cwith|30|30|2|2|cell-valign|c>|<cwith|31|31|2|2|cell-halign|c>|<cwith|31|31|2|2|cell-valign|c>|<cwith|32|32|2|2|cell-halign|c>|<cwith|32|32|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|30|33|2|2|cell-background|pastel
  blue>|<cwith|30|30|2|2|cell-bborder|0ln>|<cwith|31|31|2|2|cell-tborder|0ln>|<cwith|30|30|2|2|cell-rborder|0ln>|<cwith|30|30|2|2|cell-tborder|0ln>|<cwith|2|17|2|2|cell-halign|c>|<cwith|2|17|2|2|cell-valign|c>|<cwith|2|17|2|2|cell-background|pastel
  blue>|<cwith|2|2|2|2|cell-tborder|1ln>|<cwith|18|33|2|2|cell-halign|c>|<cwith|18|33|2|2|cell-valign|c>|<cwith|18|33|2|2|cell-background|pastel
  blue>|<cwith|18|18|2|2|cell-tborder|0ln>|<cwith|17|17|2|2|cell-bborder|0ln>|<cwith|18|18|2|2|cell-bborder|0ln>|<cwith|19|19|2|2|cell-tborder|0ln>|<cwith|18|18|2|2|cell-rborder|0ln>|<cwith|2|33|2|2|cell-halign|c>|<cwith|2|33|2|2|cell-valign|c>|<cwith|2|2|2|2|cell-halign|c>|<cwith|2|2|2|2|cell-valign|c>|<cwith|3|3|2|2|cell-halign|c>|<cwith|3|3|2|2|cell-valign|c>|<cwith|4|4|2|2|cell-halign|c>|<cwith|4|4|2|2|cell-valign|c>|<cwith|5|5|2|2|cell-halign|c>|<cwith|5|5|2|2|cell-valign|c>|<cwith|6|6|2|2|cell-halign|c>|<cwith|6|6|2|2|cell-valign|c>|<cwith|7|7|2|2|cell-halign|c>|<cwith|7|7|2|2|cell-valign|c>|<cwith|8|8|2|2|cell-halign|c>|<cwith|8|8|2|2|cell-valign|c>|<cwith|9|15|2|2|cell-halign|c>|<cwith|9|15|2|2|cell-valign|c>|<cwith|9|9|2|2|cell-halign|c>|<cwith|9|9|2|2|cell-valign|c>|<cwith|10|10|2|2|cell-halign|c>|<cwith|10|10|2|2|cell-valign|c>|<cwith|11|11|2|2|cell-halign|c>|<cwith|11|11|2|2|cell-valign|c>|<cwith|12|12|2|2|cell-halign|c>|<cwith|12|12|2|2|cell-valign|c>|<cwith|13|13|2|2|cell-halign|c>|<cwith|13|13|2|2|cell-valign|c>|<cwith|14|14|2|2|cell-halign|c>|<cwith|14|14|2|2|cell-valign|c>|<cwith|15|15|2|2|cell-halign|c>|<cwith|15|15|2|2|cell-valign|c>|<cwith|16|22|2|2|cell-halign|c>|<cwith|16|22|2|2|cell-valign|c>|<cwith|16|16|2|2|cell-halign|c>|<cwith|16|16|2|2|cell-valign|c>|<cwith|17|17|2|2|cell-halign|c>|<cwith|17|17|2|2|cell-valign|c>|<cwith|18|18|2|2|cell-halign|c>|<cwith|18|18|2|2|cell-valign|c>|<cwith|19|19|2|2|cell-halign|c>|<cwith|19|19|2|2|cell-valign|c>|<cwith|20|20|2|2|cell-halign|c>|<cwith|20|20|2|2|cell-valign|c>|<cwith|21|21|2|2|cell-halign|c>|<cwith|21|21|2|2|cell-valign|c>|<cwith|22|22|2|2|cell-halign|c>|<cwith|22|22|2|2|cell-valign|c>|<cwith|23|29|2|2|cell-halign|c>|<cwith|23|29|2|2|cell-valign|c>|<cwith|23|23|2|2|cell-halign|c>|<cwith|23|23|2|2|cell-valign|c>|<cwith|24|24|2|2|cell-halign|c>|<cwith|24|24|2|2|cell-valign|c>|<cwith|25|25|2|2|cell-halign|c>|<cwith|25|25|2|2|cell-valign|c>|<cwith|26|26|2|2|cell-halign|c>|<cwith|26|26|2|2|cell-valign|c>|<cwith|27|27|2|2|cell-halign|c>|<cwith|27|27|2|2|cell-valign|c>|<cwith|28|28|2|2|cell-halign|c>|<cwith|28|28|2|2|cell-valign|c>|<cwith|29|29|2|2|cell-halign|c>|<cwith|29|29|2|2|cell-valign|c>|<cwith|30|32|2|2|cell-halign|c>|<cwith|30|32|2|2|cell-valign|c>|<cwith|30|32|2|2|cell-halign|c>|<cwith|30|32|2|2|cell-valign|c>|<cwith|30|30|2|2|cell-halign|c>|<cwith|30|30|2|2|cell-valign|c>|<cwith|31|31|2|2|cell-halign|c>|<cwith|31|31|2|2|cell-valign|c>|<cwith|32|32|2|2|cell-halign|c>|<cwith|32|32|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|2|33|2|2|cell-background|pastel
  blue>|<cwith|33|33|2|2|cell-bborder|1ln>|<cwith|2|2|2|2|cell-tborder|1ln>|<cwith|5|6|2|2|cell-rborder|0ln>|<cwith|5|5|2|2|cell-rborder|0ln>|<cwith|2|33|2|2|cell-halign|c>|<cwith|2|33|2|2|cell-valign|c>|<cwith|2|2|2|2|cell-halign|c>|<cwith|2|2|2|2|cell-valign|c>|<cwith|3|3|2|2|cell-halign|c>|<cwith|3|3|2|2|cell-valign|c>|<cwith|4|4|2|2|cell-halign|c>|<cwith|4|4|2|2|cell-valign|c>|<cwith|5|5|2|2|cell-halign|c>|<cwith|5|5|2|2|cell-valign|c>|<cwith|6|6|2|2|cell-halign|c>|<cwith|6|6|2|2|cell-valign|c>|<cwith|7|7|2|2|cell-halign|c>|<cwith|7|7|2|2|cell-valign|c>|<cwith|8|8|2|2|cell-halign|c>|<cwith|8|8|2|2|cell-valign|c>|<cwith|9|15|2|2|cell-halign|c>|<cwith|9|15|2|2|cell-valign|c>|<cwith|9|9|2|2|cell-halign|c>|<cwith|9|9|2|2|cell-valign|c>|<cwith|10|10|2|2|cell-halign|c>|<cwith|10|10|2|2|cell-valign|c>|<cwith|11|11|2|2|cell-halign|c>|<cwith|11|11|2|2|cell-valign|c>|<cwith|12|12|2|2|cell-halign|c>|<cwith|12|12|2|2|cell-valign|c>|<cwith|13|13|2|2|cell-halign|c>|<cwith|13|13|2|2|cell-valign|c>|<cwith|14|14|2|2|cell-halign|c>|<cwith|14|14|2|2|cell-valign|c>|<cwith|15|15|2|2|cell-halign|c>|<cwith|15|15|2|2|cell-valign|c>|<cwith|16|22|2|2|cell-halign|c>|<cwith|16|22|2|2|cell-valign|c>|<cwith|16|16|2|2|cell-halign|c>|<cwith|16|16|2|2|cell-valign|c>|<cwith|17|17|2|2|cell-halign|c>|<cwith|17|17|2|2|cell-valign|c>|<cwith|18|18|2|2|cell-halign|c>|<cwith|18|18|2|2|cell-valign|c>|<cwith|19|19|2|2|cell-halign|c>|<cwith|19|19|2|2|cell-valign|c>|<cwith|20|20|2|2|cell-halign|c>|<cwith|20|20|2|2|cell-valign|c>|<cwith|21|21|2|2|cell-halign|c>|<cwith|21|21|2|2|cell-valign|c>|<cwith|22|22|2|2|cell-halign|c>|<cwith|22|22|2|2|cell-valign|c>|<cwith|23|29|2|2|cell-halign|c>|<cwith|23|29|2|2|cell-valign|c>|<cwith|23|23|2|2|cell-halign|c>|<cwith|23|23|2|2|cell-valign|c>|<cwith|24|24|2|2|cell-halign|c>|<cwith|24|24|2|2|cell-valign|c>|<cwith|25|25|2|2|cell-halign|c>|<cwith|25|25|2|2|cell-valign|c>|<cwith|26|26|2|2|cell-halign|c>|<cwith|26|26|2|2|cell-valign|c>|<cwith|27|27|2|2|cell-halign|c>|<cwith|27|27|2|2|cell-valign|c>|<cwith|28|28|2|2|cell-halign|c>|<cwith|28|28|2|2|cell-valign|c>|<cwith|29|29|2|2|cell-halign|c>|<cwith|29|29|2|2|cell-valign|c>|<cwith|30|32|2|2|cell-halign|c>|<cwith|30|32|2|2|cell-valign|c>|<cwith|30|32|2|2|cell-halign|c>|<cwith|30|32|2|2|cell-valign|c>|<cwith|30|30|2|2|cell-halign|c>|<cwith|30|30|2|2|cell-valign|c>|<cwith|31|31|2|2|cell-halign|c>|<cwith|31|31|2|2|cell-valign|c>|<cwith|32|32|2|2|cell-halign|c>|<cwith|32|32|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|2|33|2|2|cell-background|pastel
  blue>|<cwith|33|33|2|2|cell-bborder|1ln>|<cwith|2|2|2|2|cell-tborder|1ln>|<cwith|6|9|2|2|cell-halign|c>|<cwith|6|9|2|2|cell-valign|c>|<cwith|6|6|2|2|cell-halign|c>|<cwith|6|6|2|2|cell-valign|c>|<cwith|7|7|2|2|cell-halign|c>|<cwith|7|7|2|2|cell-valign|c>|<cwith|8|8|2|2|cell-halign|c>|<cwith|8|8|2|2|cell-valign|c>|<cwith|9|9|2|2|cell-halign|c>|<cwith|9|9|2|2|cell-valign|c>|<cwith|6|9|2|2|cell-background|pastel
  blue>|<cwith|6|6|2|2|cell-bborder|0ln>|<cwith|7|7|2|2|cell-tborder|0ln>|<cwith|5|6|2|2|cell-rborder|0ln>|<cwith|5|5|2|2|cell-tborder|0ln>|<cwith|4|4|2|2|cell-bborder|0ln>|<cwith|5|5|2|2|cell-bborder|0ln>|<cwith|6|6|2|2|cell-tborder|0ln>|<cwith|5|5|2|2|cell-rborder|0ln>|<cwith|10|13|2|2|cell-halign|c>|<cwith|10|13|2|2|cell-valign|c>|<cwith|10|10|2|2|cell-halign|c>|<cwith|10|10|2|2|cell-valign|c>|<cwith|11|11|2|2|cell-halign|c>|<cwith|11|11|2|2|cell-valign|c>|<cwith|12|12|2|2|cell-halign|c>|<cwith|12|12|2|2|cell-valign|c>|<cwith|13|13|2|2|cell-halign|c>|<cwith|13|13|2|2|cell-valign|c>|<cwith|13|13|2|2|cell-halign|c>|<cwith|13|13|2|2|cell-valign|c>|<cwith|10|13|2|2|cell-background|pastel
  blue>|<cwith|10|13|2|2|cell-halign|c>|<cwith|10|13|2|2|cell-valign|c>|<cwith|10|10|2|2|cell-halign|c>|<cwith|10|10|2|2|cell-valign|c>|<cwith|11|11|2|2|cell-halign|c>|<cwith|11|11|2|2|cell-valign|c>|<cwith|12|12|2|2|cell-halign|c>|<cwith|12|12|2|2|cell-valign|c>|<cwith|13|13|2|2|cell-halign|c>|<cwith|13|13|2|2|cell-valign|c>|<cwith|10|13|2|2|cell-background|pastel
  blue>|<cwith|10|10|2|2|cell-bborder|0ln>|<cwith|11|11|2|2|cell-tborder|0ln>|<cwith|10|10|2|2|cell-rborder|0ln>|<cwith|10|10|2|2|cell-tborder|0ln>|<cwith|14|17|2|2|cell-halign|c>|<cwith|14|17|2|2|cell-valign|c>|<cwith|14|14|2|2|cell-halign|c>|<cwith|14|14|2|2|cell-valign|c>|<cwith|15|15|2|2|cell-halign|c>|<cwith|15|15|2|2|cell-valign|c>|<cwith|16|16|2|2|cell-halign|c>|<cwith|16|16|2|2|cell-valign|c>|<cwith|17|17|2|2|cell-halign|c>|<cwith|17|17|2|2|cell-valign|c>|<cwith|17|17|2|2|cell-halign|c>|<cwith|17|17|2|2|cell-valign|c>|<cwith|14|17|2|2|cell-background|pastel
  blue>|<cwith|14|17|2|2|cell-halign|c>|<cwith|14|17|2|2|cell-valign|c>|<cwith|14|14|2|2|cell-halign|c>|<cwith|14|14|2|2|cell-valign|c>|<cwith|15|15|2|2|cell-halign|c>|<cwith|15|15|2|2|cell-valign|c>|<cwith|16|16|2|2|cell-halign|c>|<cwith|16|16|2|2|cell-valign|c>|<cwith|17|17|2|2|cell-halign|c>|<cwith|17|17|2|2|cell-valign|c>|<cwith|14|17|2|2|cell-background|pastel
  blue>|<cwith|14|14|2|2|cell-bborder|0ln>|<cwith|15|15|2|2|cell-tborder|0ln>|<cwith|14|14|2|2|cell-rborder|0ln>|<cwith|14|14|2|2|cell-tborder|0ln>|<cwith|18|21|2|2|cell-halign|c>|<cwith|18|21|2|2|cell-valign|c>|<cwith|18|18|2|2|cell-halign|c>|<cwith|18|18|2|2|cell-valign|c>|<cwith|19|19|2|2|cell-halign|c>|<cwith|19|19|2|2|cell-valign|c>|<cwith|20|20|2|2|cell-halign|c>|<cwith|20|20|2|2|cell-valign|c>|<cwith|21|21|2|2|cell-halign|c>|<cwith|21|21|2|2|cell-valign|c>|<cwith|21|21|2|2|cell-halign|c>|<cwith|21|21|2|2|cell-valign|c>|<cwith|18|21|2|2|cell-background|pastel
  blue>|<cwith|18|21|2|2|cell-halign|c>|<cwith|18|21|2|2|cell-valign|c>|<cwith|18|18|2|2|cell-halign|c>|<cwith|18|18|2|2|cell-valign|c>|<cwith|19|19|2|2|cell-halign|c>|<cwith|19|19|2|2|cell-valign|c>|<cwith|20|20|2|2|cell-halign|c>|<cwith|20|20|2|2|cell-valign|c>|<cwith|21|21|2|2|cell-halign|c>|<cwith|21|21|2|2|cell-valign|c>|<cwith|18|21|2|2|cell-background|pastel
  blue>|<cwith|18|18|2|2|cell-bborder|0ln>|<cwith|19|19|2|2|cell-tborder|0ln>|<cwith|18|18|2|2|cell-tborder|0ln>|<cwith|22|25|2|2|cell-halign|c>|<cwith|22|25|2|2|cell-valign|c>|<cwith|22|22|2|2|cell-halign|c>|<cwith|22|22|2|2|cell-valign|c>|<cwith|23|23|2|2|cell-halign|c>|<cwith|23|23|2|2|cell-valign|c>|<cwith|24|24|2|2|cell-halign|c>|<cwith|24|24|2|2|cell-valign|c>|<cwith|25|25|2|2|cell-halign|c>|<cwith|25|25|2|2|cell-valign|c>|<cwith|25|25|2|2|cell-halign|c>|<cwith|25|25|2|2|cell-valign|c>|<cwith|22|25|2|2|cell-background|pastel
  blue>|<cwith|22|25|2|2|cell-halign|c>|<cwith|22|25|2|2|cell-valign|c>|<cwith|22|22|2|2|cell-halign|c>|<cwith|22|22|2|2|cell-valign|c>|<cwith|23|23|2|2|cell-halign|c>|<cwith|23|23|2|2|cell-valign|c>|<cwith|24|24|2|2|cell-halign|c>|<cwith|24|24|2|2|cell-valign|c>|<cwith|25|25|2|2|cell-halign|c>|<cwith|25|25|2|2|cell-valign|c>|<cwith|22|25|2|2|cell-background|pastel
  blue>|<cwith|22|22|2|2|cell-bborder|0ln>|<cwith|23|23|2|2|cell-tborder|0ln>|<cwith|22|22|2|2|cell-rborder|0ln>|<cwith|22|22|2|2|cell-tborder|0ln>|<cwith|26|29|2|2|cell-halign|c>|<cwith|26|29|2|2|cell-valign|c>|<cwith|26|26|2|2|cell-halign|c>|<cwith|26|26|2|2|cell-valign|c>|<cwith|27|27|2|2|cell-halign|c>|<cwith|27|27|2|2|cell-valign|c>|<cwith|28|28|2|2|cell-halign|c>|<cwith|28|28|2|2|cell-valign|c>|<cwith|29|29|2|2|cell-halign|c>|<cwith|29|29|2|2|cell-valign|c>|<cwith|29|29|2|2|cell-halign|c>|<cwith|29|29|2|2|cell-valign|c>|<cwith|26|29|2|2|cell-background|pastel
  blue>|<cwith|26|29|2|2|cell-halign|c>|<cwith|26|29|2|2|cell-valign|c>|<cwith|26|26|2|2|cell-halign|c>|<cwith|26|26|2|2|cell-valign|c>|<cwith|27|27|2|2|cell-halign|c>|<cwith|27|27|2|2|cell-valign|c>|<cwith|28|28|2|2|cell-halign|c>|<cwith|28|28|2|2|cell-valign|c>|<cwith|29|29|2|2|cell-halign|c>|<cwith|29|29|2|2|cell-valign|c>|<cwith|26|29|2|2|cell-background|pastel
  blue>|<cwith|26|26|2|2|cell-bborder|0ln>|<cwith|27|27|2|2|cell-tborder|0ln>|<cwith|26|26|2|2|cell-rborder|0ln>|<cwith|26|26|2|2|cell-tborder|0ln>|<cwith|30|33|2|2|cell-halign|c>|<cwith|30|33|2|2|cell-valign|c>|<cwith|30|30|2|2|cell-halign|c>|<cwith|30|30|2|2|cell-valign|c>|<cwith|31|31|2|2|cell-halign|c>|<cwith|31|31|2|2|cell-valign|c>|<cwith|32|32|2|2|cell-halign|c>|<cwith|32|32|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|30|33|2|2|cell-background|pastel
  blue>|<cwith|30|33|2|2|cell-halign|c>|<cwith|30|33|2|2|cell-valign|c>|<cwith|30|30|2|2|cell-halign|c>|<cwith|30|30|2|2|cell-valign|c>|<cwith|31|31|2|2|cell-halign|c>|<cwith|31|31|2|2|cell-valign|c>|<cwith|32|32|2|2|cell-halign|c>|<cwith|32|32|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|30|33|2|2|cell-background|pastel
  blue>|<cwith|30|30|2|2|cell-bborder|0ln>|<cwith|31|31|2|2|cell-tborder|0ln>|<cwith|30|30|2|2|cell-rborder|0ln>|<cwith|30|30|2|2|cell-tborder|0ln>|<cwith|18|18|2|2|cell-rborder|0ln>|<cwith|2|33|2|2|cell-halign|c>|<cwith|2|33|2|2|cell-valign|c>|<cwith|2|2|2|2|cell-halign|c>|<cwith|2|2|2|2|cell-valign|c>|<cwith|3|3|2|2|cell-halign|c>|<cwith|3|3|2|2|cell-valign|c>|<cwith|4|4|2|2|cell-halign|c>|<cwith|4|4|2|2|cell-valign|c>|<cwith|5|5|2|2|cell-halign|c>|<cwith|5|5|2|2|cell-valign|c>|<cwith|6|6|2|2|cell-halign|c>|<cwith|6|6|2|2|cell-valign|c>|<cwith|7|7|2|2|cell-halign|c>|<cwith|7|7|2|2|cell-valign|c>|<cwith|8|8|2|2|cell-halign|c>|<cwith|8|8|2|2|cell-valign|c>|<cwith|9|15|2|2|cell-halign|c>|<cwith|9|15|2|2|cell-valign|c>|<cwith|9|9|2|2|cell-halign|c>|<cwith|9|9|2|2|cell-valign|c>|<cwith|10|10|2|2|cell-halign|c>|<cwith|10|10|2|2|cell-valign|c>|<cwith|11|11|2|2|cell-halign|c>|<cwith|11|11|2|2|cell-valign|c>|<cwith|12|12|2|2|cell-halign|c>|<cwith|12|12|2|2|cell-valign|c>|<cwith|13|13|2|2|cell-halign|c>|<cwith|13|13|2|2|cell-valign|c>|<cwith|14|14|2|2|cell-halign|c>|<cwith|14|14|2|2|cell-valign|c>|<cwith|15|15|2|2|cell-halign|c>|<cwith|15|15|2|2|cell-valign|c>|<cwith|16|22|2|2|cell-halign|c>|<cwith|16|22|2|2|cell-valign|c>|<cwith|16|16|2|2|cell-halign|c>|<cwith|16|16|2|2|cell-valign|c>|<cwith|17|17|2|2|cell-halign|c>|<cwith|17|17|2|2|cell-valign|c>|<cwith|18|18|2|2|cell-halign|c>|<cwith|18|18|2|2|cell-valign|c>|<cwith|19|19|2|2|cell-halign|c>|<cwith|19|19|2|2|cell-valign|c>|<cwith|20|20|2|2|cell-halign|c>|<cwith|20|20|2|2|cell-valign|c>|<cwith|21|21|2|2|cell-halign|c>|<cwith|21|21|2|2|cell-valign|c>|<cwith|22|22|2|2|cell-halign|c>|<cwith|22|22|2|2|cell-valign|c>|<cwith|23|29|2|2|cell-halign|c>|<cwith|23|29|2|2|cell-valign|c>|<cwith|23|23|2|2|cell-halign|c>|<cwith|23|23|2|2|cell-valign|c>|<cwith|24|24|2|2|cell-halign|c>|<cwith|24|24|2|2|cell-valign|c>|<cwith|25|25|2|2|cell-halign|c>|<cwith|25|25|2|2|cell-valign|c>|<cwith|26|26|2|2|cell-halign|c>|<cwith|26|26|2|2|cell-valign|c>|<cwith|27|27|2|2|cell-halign|c>|<cwith|27|27|2|2|cell-valign|c>|<cwith|28|28|2|2|cell-halign|c>|<cwith|28|28|2|2|cell-valign|c>|<cwith|29|29|2|2|cell-halign|c>|<cwith|29|29|2|2|cell-valign|c>|<cwith|30|32|2|2|cell-halign|c>|<cwith|30|32|2|2|cell-valign|c>|<cwith|30|32|2|2|cell-halign|c>|<cwith|30|32|2|2|cell-valign|c>|<cwith|30|30|2|2|cell-halign|c>|<cwith|30|30|2|2|cell-valign|c>|<cwith|31|31|2|2|cell-halign|c>|<cwith|31|31|2|2|cell-valign|c>|<cwith|32|32|2|2|cell-halign|c>|<cwith|32|32|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|33|33|2|2|cell-halign|c>|<cwith|33|33|2|2|cell-valign|c>|<cwith|2|33|2|2|cell-background|pastel
  blue>|<cwith|33|33|2|2|cell-bborder|1ln>|<cwith|2|2|2|2|cell-tborder|1ln>|<cwith|2|2|9|12|cell-halign|c>|<cwith|2|2|9|12|cell-valign|c>|<cwith|2|2|9|12|cell-background|pastel
  green>|<cwith|2|2|12|12|cell-rborder|1ln>|<cwith|2|2|9|12|cell-tborder|1ln>|<cwith|2|2|9|12|cell-halign|c>|<cwith|2|2|9|12|cell-valign|c>|<cwith|2|2|9|12|cell-background|pastel
  green>|<cwith|2|2|12|12|cell-rborder|1ln>|<cwith|2|2|9|12|cell-tborder|1ln>|<cwith|3|3|9|12|cell-halign|c>|<cwith|3|3|9|12|cell-valign|c>|<cwith|3|3|9|12|cell-background|pastel
  green>|<cwith|3|3|12|12|cell-rborder|1ln>|<cwith|3|3|9|12|cell-halign|c>|<cwith|3|3|9|12|cell-valign|c>|<cwith|3|3|9|12|cell-background|pastel
  green>|<cwith|3|3|12|12|cell-rborder|1ln>|<cwith|4|4|9|12|cell-halign|c>|<cwith|4|4|9|12|cell-valign|c>|<cwith|4|4|9|12|cell-background|pastel
  green>|<cwith|4|4|12|12|cell-rborder|1ln>|<cwith|4|4|9|12|cell-halign|c>|<cwith|4|4|9|12|cell-valign|c>|<cwith|4|4|9|12|cell-background|pastel
  green>|<cwith|4|4|12|12|cell-rborder|1ln>|<cwith|4|4|9|12|cell-halign|c>|<cwith|4|4|9|12|cell-valign|c>|<cwith|4|4|9|12|cell-background|pastel
  green>|<cwith|4|4|12|12|cell-rborder|1ln>|<cwith|5|5|9|12|cell-halign|c>|<cwith|5|5|9|12|cell-valign|c>|<cwith|5|5|9|12|cell-background|pastel
  green>|<cwith|5|5|12|12|cell-rborder|1ln>|<cwith|5|5|9|12|cell-halign|c>|<cwith|5|5|9|12|cell-valign|c>|<cwith|5|5|9|12|cell-background|pastel
  green>|<cwith|5|5|12|12|cell-rborder|1ln>|<cwith|5|5|9|12|cell-halign|c>|<cwith|5|5|9|12|cell-valign|c>|<cwith|5|5|9|12|cell-background|pastel
  green>|<cwith|5|5|12|12|cell-rborder|1ln>|<cwith|5|5|9|12|cell-halign|c>|<cwith|5|5|9|12|cell-valign|c>|<cwith|5|5|9|12|cell-background|pastel
  green>|<cwith|5|5|12|12|cell-rborder|1ln>|<cwith|5|5|9|12|cell-halign|c>|<cwith|5|5|9|12|cell-valign|c>|<cwith|5|5|9|12|cell-background|pastel
  green>|<cwith|5|5|12|12|cell-rborder|1ln>|<cwith|5|5|9|12|cell-halign|c>|<cwith|5|5|9|12|cell-valign|c>|<cwith|5|5|9|12|cell-background|pastel
  green>|<cwith|5|5|12|12|cell-rborder|1ln>|<cwith|5|5|9|12|cell-halign|c>|<cwith|5|5|9|12|cell-valign|c>|<cwith|5|5|9|12|cell-background|pastel
  green>|<cwith|5|5|12|12|cell-rborder|1ln>|<cwith|5|5|9|12|cell-halign|c>|<cwith|5|5|9|12|cell-valign|c>|<cwith|5|5|9|12|cell-background|pastel
  green>|<cwith|5|5|12|12|cell-rborder|1ln>|<cwith|6|7|9|12|cell-halign|c>|<cwith|6|7|9|12|cell-valign|c>|<cwith|6|7|9|12|cell-background|pastel
  green>|<cwith|6|7|12|12|cell-rborder|1ln>|<cwith|6|6|9|12|cell-halign|c>|<cwith|6|6|9|12|cell-valign|c>|<cwith|6|6|9|12|cell-background|pastel
  green>|<cwith|6|6|12|12|cell-rborder|1ln>|<cwith|6|6|9|12|cell-halign|c>|<cwith|6|6|9|12|cell-valign|c>|<cwith|6|6|9|12|cell-background|pastel
  green>|<cwith|6|6|12|12|cell-rborder|1ln>|<cwith|6|6|9|12|cell-halign|c>|<cwith|6|6|9|12|cell-valign|c>|<cwith|6|6|9|12|cell-background|pastel
  green>|<cwith|6|6|12|12|cell-rborder|1ln>|<cwith|7|7|9|12|cell-halign|c>|<cwith|7|7|9|12|cell-valign|c>|<cwith|7|7|9|12|cell-background|pastel
  green>|<cwith|7|7|12|12|cell-rborder|1ln>|<cwith|7|7|9|12|cell-halign|c>|<cwith|7|7|9|12|cell-valign|c>|<cwith|7|7|9|12|cell-background|pastel
  green>|<cwith|7|7|12|12|cell-rborder|1ln>|<cwith|7|7|9|12|cell-halign|c>|<cwith|7|7|9|12|cell-valign|c>|<cwith|7|7|9|12|cell-background|pastel
  green>|<cwith|7|7|12|12|cell-rborder|1ln>|<cwith|7|7|9|12|cell-halign|c>|<cwith|7|7|9|12|cell-valign|c>|<cwith|7|7|9|12|cell-background|pastel
  green>|<cwith|7|7|12|12|cell-rborder|1ln>|<cwith|7|7|9|12|cell-halign|c>|<cwith|7|7|9|12|cell-valign|c>|<cwith|7|7|9|12|cell-background|pastel
  green>|<cwith|7|7|12|12|cell-rborder|1ln>|<cwith|7|7|9|12|cell-halign|c>|<cwith|7|7|9|12|cell-valign|c>|<cwith|7|7|9|12|cell-background|pastel
  green>|<cwith|7|7|12|12|cell-rborder|1ln>|<cwith|7|7|9|12|cell-halign|c>|<cwith|7|7|9|12|cell-valign|c>|<cwith|7|7|9|12|cell-background|pastel
  green>|<cwith|7|7|12|12|cell-rborder|1ln>|<cwith|7|7|9|12|cell-halign|c>|<cwith|7|7|9|12|cell-valign|c>|<cwith|7|7|9|12|cell-background|pastel
  green>|<cwith|7|7|12|12|cell-rborder|1ln>|<cwith|8|9|9|12|cell-halign|c>|<cwith|8|9|9|12|cell-valign|c>|<cwith|8|9|9|12|cell-background|pastel
  green>|<cwith|8|9|12|12|cell-rborder|1ln>|<cwith|8|8|9|12|cell-halign|c>|<cwith|8|8|9|12|cell-valign|c>|<cwith|8|8|9|12|cell-background|pastel
  green>|<cwith|8|8|12|12|cell-rborder|1ln>|<cwith|8|8|9|12|cell-halign|c>|<cwith|8|8|9|12|cell-valign|c>|<cwith|8|8|9|12|cell-background|pastel
  green>|<cwith|8|8|12|12|cell-rborder|1ln>|<cwith|8|8|9|12|cell-halign|c>|<cwith|8|8|9|12|cell-valign|c>|<cwith|8|8|9|12|cell-background|pastel
  green>|<cwith|8|8|12|12|cell-rborder|1ln>|<cwith|9|9|9|12|cell-halign|c>|<cwith|9|9|9|12|cell-valign|c>|<cwith|9|9|9|12|cell-background|pastel
  green>|<cwith|9|9|12|12|cell-rborder|1ln>|<cwith|9|9|9|12|cell-halign|c>|<cwith|9|9|9|12|cell-valign|c>|<cwith|9|9|9|12|cell-background|pastel
  green>|<cwith|9|9|12|12|cell-rborder|1ln>|<cwith|9|9|9|12|cell-halign|c>|<cwith|9|9|9|12|cell-valign|c>|<cwith|9|9|9|12|cell-background|pastel
  green>|<cwith|9|9|12|12|cell-rborder|1ln>|<cwith|9|9|9|12|cell-halign|c>|<cwith|9|9|9|12|cell-valign|c>|<cwith|9|9|9|12|cell-background|pastel
  green>|<cwith|9|9|12|12|cell-rborder|1ln>|<cwith|9|9|9|12|cell-halign|c>|<cwith|9|9|9|12|cell-valign|c>|<cwith|9|9|9|12|cell-background|pastel
  green>|<cwith|9|9|12|12|cell-rborder|1ln>|<cwith|9|9|9|12|cell-halign|c>|<cwith|9|9|9|12|cell-valign|c>|<cwith|9|9|9|12|cell-background|pastel
  green>|<cwith|9|9|12|12|cell-rborder|1ln>|<cwith|9|9|9|12|cell-halign|c>|<cwith|9|9|9|12|cell-valign|c>|<cwith|9|9|9|12|cell-background|pastel
  green>|<cwith|9|9|12|12|cell-rborder|1ln>|<cwith|9|9|9|12|cell-halign|c>|<cwith|9|9|9|12|cell-valign|c>|<cwith|9|9|9|12|cell-background|pastel
  green>|<cwith|9|9|12|12|cell-rborder|1ln>|<cwith|10|11|9|12|cell-halign|c>|<cwith|10|11|9|12|cell-valign|c>|<cwith|10|11|9|12|cell-background|pastel
  green>|<cwith|10|11|12|12|cell-rborder|1ln>|<cwith|10|10|9|12|cell-halign|c>|<cwith|10|10|9|12|cell-valign|c>|<cwith|10|10|9|12|cell-background|pastel
  green>|<cwith|10|10|12|12|cell-rborder|1ln>|<cwith|10|10|9|12|cell-halign|c>|<cwith|10|10|9|12|cell-valign|c>|<cwith|10|10|9|12|cell-background|pastel
  green>|<cwith|10|10|12|12|cell-rborder|1ln>|<cwith|10|10|9|12|cell-halign|c>|<cwith|10|10|9|12|cell-valign|c>|<cwith|10|10|9|12|cell-background|pastel
  green>|<cwith|10|10|12|12|cell-rborder|1ln>|<cwith|11|11|9|12|cell-halign|c>|<cwith|11|11|9|12|cell-valign|c>|<cwith|11|11|9|12|cell-background|pastel
  green>|<cwith|11|11|12|12|cell-rborder|1ln>|<cwith|11|11|9|12|cell-halign|c>|<cwith|11|11|9|12|cell-valign|c>|<cwith|11|11|9|12|cell-background|pastel
  green>|<cwith|11|11|12|12|cell-rborder|1ln>|<cwith|11|11|9|12|cell-halign|c>|<cwith|11|11|9|12|cell-valign|c>|<cwith|11|11|9|12|cell-background|pastel
  green>|<cwith|11|11|12|12|cell-rborder|1ln>|<cwith|11|11|9|12|cell-halign|c>|<cwith|11|11|9|12|cell-valign|c>|<cwith|11|11|9|12|cell-background|pastel
  green>|<cwith|11|11|12|12|cell-rborder|1ln>|<cwith|11|11|9|12|cell-halign|c>|<cwith|11|11|9|12|cell-valign|c>|<cwith|11|11|9|12|cell-background|pastel
  green>|<cwith|11|11|12|12|cell-rborder|1ln>|<cwith|11|11|9|12|cell-halign|c>|<cwith|11|11|9|12|cell-valign|c>|<cwith|11|11|9|12|cell-background|pastel
  green>|<cwith|11|11|12|12|cell-rborder|1ln>|<cwith|11|11|9|12|cell-halign|c>|<cwith|11|11|9|12|cell-valign|c>|<cwith|11|11|9|12|cell-background|pastel
  green>|<cwith|11|11|12|12|cell-rborder|1ln>|<cwith|11|11|9|12|cell-halign|c>|<cwith|11|11|9|12|cell-valign|c>|<cwith|11|11|9|12|cell-background|pastel
  green>|<cwith|11|11|12|12|cell-rborder|1ln>|<cwith|12|13|9|12|cell-halign|c>|<cwith|12|13|9|12|cell-valign|c>|<cwith|12|13|9|12|cell-background|pastel
  green>|<cwith|12|13|12|12|cell-rborder|1ln>|<cwith|12|12|9|12|cell-halign|c>|<cwith|12|12|9|12|cell-valign|c>|<cwith|12|12|9|12|cell-background|pastel
  green>|<cwith|12|12|12|12|cell-rborder|1ln>|<cwith|12|12|9|12|cell-halign|c>|<cwith|12|12|9|12|cell-valign|c>|<cwith|12|12|9|12|cell-background|pastel
  green>|<cwith|12|12|12|12|cell-rborder|1ln>|<cwith|12|12|9|12|cell-halign|c>|<cwith|12|12|9|12|cell-valign|c>|<cwith|12|12|9|12|cell-background|pastel
  green>|<cwith|12|12|12|12|cell-rborder|1ln>|<cwith|13|13|9|12|cell-halign|c>|<cwith|13|13|9|12|cell-valign|c>|<cwith|13|13|9|12|cell-background|pastel
  green>|<cwith|13|13|12|12|cell-rborder|1ln>|<cwith|13|13|9|12|cell-halign|c>|<cwith|13|13|9|12|cell-valign|c>|<cwith|13|13|9|12|cell-background|pastel
  green>|<cwith|13|13|12|12|cell-rborder|1ln>|<cwith|13|13|9|12|cell-halign|c>|<cwith|13|13|9|12|cell-valign|c>|<cwith|13|13|9|12|cell-background|pastel
  green>|<cwith|13|13|12|12|cell-rborder|1ln>|<cwith|13|13|9|12|cell-halign|c>|<cwith|13|13|9|12|cell-valign|c>|<cwith|13|13|9|12|cell-background|pastel
  green>|<cwith|13|13|12|12|cell-rborder|1ln>|<cwith|13|13|9|12|cell-halign|c>|<cwith|13|13|9|12|cell-valign|c>|<cwith|13|13|9|12|cell-background|pastel
  green>|<cwith|13|13|12|12|cell-rborder|1ln>|<cwith|13|13|9|12|cell-halign|c>|<cwith|13|13|9|12|cell-valign|c>|<cwith|13|13|9|12|cell-background|pastel
  green>|<cwith|13|13|12|12|cell-rborder|1ln>|<cwith|13|13|9|12|cell-halign|c>|<cwith|13|13|9|12|cell-valign|c>|<cwith|13|13|9|12|cell-background|pastel
  green>|<cwith|13|13|12|12|cell-rborder|1ln>|<cwith|13|13|9|12|cell-halign|c>|<cwith|13|13|9|12|cell-valign|c>|<cwith|13|13|9|12|cell-background|pastel
  green>|<cwith|13|13|12|12|cell-rborder|1ln>|<cwith|14|15|9|12|cell-halign|c>|<cwith|14|15|9|12|cell-valign|c>|<cwith|14|15|9|12|cell-background|pastel
  green>|<cwith|14|15|12|12|cell-rborder|1ln>|<cwith|14|14|9|12|cell-halign|c>|<cwith|14|14|9|12|cell-valign|c>|<cwith|14|14|9|12|cell-background|pastel
  green>|<cwith|14|14|12|12|cell-rborder|1ln>|<cwith|14|14|9|12|cell-halign|c>|<cwith|14|14|9|12|cell-valign|c>|<cwith|14|14|9|12|cell-background|pastel
  green>|<cwith|14|14|12|12|cell-rborder|1ln>|<cwith|14|14|9|12|cell-halign|c>|<cwith|14|14|9|12|cell-valign|c>|<cwith|14|14|9|12|cell-background|pastel
  green>|<cwith|14|14|12|12|cell-rborder|1ln>|<cwith|15|15|9|12|cell-halign|c>|<cwith|15|15|9|12|cell-valign|c>|<cwith|15|15|9|12|cell-background|pastel
  green>|<cwith|15|15|12|12|cell-rborder|1ln>|<cwith|15|15|9|12|cell-halign|c>|<cwith|15|15|9|12|cell-valign|c>|<cwith|15|15|9|12|cell-background|pastel
  green>|<cwith|15|15|12|12|cell-rborder|1ln>|<cwith|15|15|9|12|cell-halign|c>|<cwith|15|15|9|12|cell-valign|c>|<cwith|15|15|9|12|cell-background|pastel
  green>|<cwith|15|15|12|12|cell-rborder|1ln>|<cwith|15|15|9|12|cell-halign|c>|<cwith|15|15|9|12|cell-valign|c>|<cwith|15|15|9|12|cell-background|pastel
  green>|<cwith|15|15|12|12|cell-rborder|1ln>|<cwith|15|15|9|12|cell-halign|c>|<cwith|15|15|9|12|cell-valign|c>|<cwith|15|15|9|12|cell-background|pastel
  green>|<cwith|15|15|12|12|cell-rborder|1ln>|<cwith|15|15|9|12|cell-halign|c>|<cwith|15|15|9|12|cell-valign|c>|<cwith|15|15|9|12|cell-background|pastel
  green>|<cwith|15|15|12|12|cell-rborder|1ln>|<cwith|15|15|9|12|cell-halign|c>|<cwith|15|15|9|12|cell-valign|c>|<cwith|15|15|9|12|cell-background|pastel
  green>|<cwith|15|15|12|12|cell-rborder|1ln>|<cwith|15|15|9|12|cell-halign|c>|<cwith|15|15|9|12|cell-valign|c>|<cwith|15|15|9|12|cell-background|pastel
  green>|<cwith|15|15|12|12|cell-rborder|1ln>|<cwith|16|17|9|12|cell-halign|c>|<cwith|16|17|9|12|cell-valign|c>|<cwith|16|17|9|12|cell-background|pastel
  green>|<cwith|16|17|12|12|cell-rborder|1ln>|<cwith|16|16|9|12|cell-halign|c>|<cwith|16|16|9|12|cell-valign|c>|<cwith|16|16|9|12|cell-background|pastel
  green>|<cwith|16|16|12|12|cell-rborder|1ln>|<cwith|16|16|9|12|cell-halign|c>|<cwith|16|16|9|12|cell-valign|c>|<cwith|16|16|9|12|cell-background|pastel
  green>|<cwith|16|16|12|12|cell-rborder|1ln>|<cwith|16|16|9|12|cell-halign|c>|<cwith|16|16|9|12|cell-valign|c>|<cwith|16|16|9|12|cell-background|pastel
  green>|<cwith|16|16|12|12|cell-rborder|1ln>|<cwith|17|17|9|12|cell-halign|c>|<cwith|17|17|9|12|cell-valign|c>|<cwith|17|17|9|12|cell-background|pastel
  green>|<cwith|17|17|12|12|cell-rborder|1ln>|<cwith|17|17|9|12|cell-halign|c>|<cwith|17|17|9|12|cell-valign|c>|<cwith|17|17|9|12|cell-background|pastel
  green>|<cwith|17|17|12|12|cell-rborder|1ln>|<cwith|17|17|9|12|cell-halign|c>|<cwith|17|17|9|12|cell-valign|c>|<cwith|17|17|9|12|cell-background|pastel
  green>|<cwith|17|17|12|12|cell-rborder|1ln>|<cwith|17|17|9|12|cell-halign|c>|<cwith|17|17|9|12|cell-valign|c>|<cwith|17|17|9|12|cell-background|pastel
  green>|<cwith|17|17|12|12|cell-rborder|1ln>|<cwith|17|17|9|12|cell-halign|c>|<cwith|17|17|9|12|cell-valign|c>|<cwith|17|17|9|12|cell-background|pastel
  green>|<cwith|17|17|12|12|cell-rborder|1ln>|<cwith|17|17|9|12|cell-halign|c>|<cwith|17|17|9|12|cell-valign|c>|<cwith|17|17|9|12|cell-background|pastel
  green>|<cwith|17|17|12|12|cell-rborder|1ln>|<cwith|17|17|9|12|cell-halign|c>|<cwith|17|17|9|12|cell-valign|c>|<cwith|17|17|9|12|cell-background|pastel
  green>|<cwith|17|17|12|12|cell-rborder|1ln>|<cwith|17|17|9|12|cell-halign|c>|<cwith|17|17|9|12|cell-valign|c>|<cwith|17|17|9|12|cell-background|pastel
  green>|<cwith|17|17|12|12|cell-rborder|1ln>|<cwith|18|19|9|12|cell-halign|c>|<cwith|18|19|9|12|cell-valign|c>|<cwith|18|19|9|12|cell-background|pastel
  green>|<cwith|18|19|12|12|cell-rborder|1ln>|<cwith|18|18|9|12|cell-halign|c>|<cwith|18|18|9|12|cell-valign|c>|<cwith|18|18|9|12|cell-background|pastel
  green>|<cwith|18|18|12|12|cell-rborder|1ln>|<cwith|18|18|9|12|cell-halign|c>|<cwith|18|18|9|12|cell-valign|c>|<cwith|18|18|9|12|cell-background|pastel
  green>|<cwith|18|18|12|12|cell-rborder|1ln>|<cwith|18|18|9|12|cell-halign|c>|<cwith|18|18|9|12|cell-valign|c>|<cwith|18|18|9|12|cell-background|pastel
  green>|<cwith|18|18|12|12|cell-rborder|1ln>|<cwith|19|19|9|12|cell-halign|c>|<cwith|19|19|9|12|cell-valign|c>|<cwith|19|19|9|12|cell-background|pastel
  green>|<cwith|19|19|12|12|cell-rborder|1ln>|<cwith|19|19|9|12|cell-halign|c>|<cwith|19|19|9|12|cell-valign|c>|<cwith|19|19|9|12|cell-background|pastel
  green>|<cwith|19|19|12|12|cell-rborder|1ln>|<cwith|19|19|9|12|cell-halign|c>|<cwith|19|19|9|12|cell-valign|c>|<cwith|19|19|9|12|cell-background|pastel
  green>|<cwith|19|19|12|12|cell-rborder|1ln>|<cwith|19|19|9|12|cell-halign|c>|<cwith|19|19|9|12|cell-valign|c>|<cwith|19|19|9|12|cell-background|pastel
  green>|<cwith|19|19|12|12|cell-rborder|1ln>|<cwith|19|19|9|12|cell-halign|c>|<cwith|19|19|9|12|cell-valign|c>|<cwith|19|19|9|12|cell-background|pastel
  green>|<cwith|19|19|12|12|cell-rborder|1ln>|<cwith|19|19|9|12|cell-halign|c>|<cwith|19|19|9|12|cell-valign|c>|<cwith|19|19|9|12|cell-background|pastel
  green>|<cwith|19|19|12|12|cell-rborder|1ln>|<cwith|19|19|9|12|cell-halign|c>|<cwith|19|19|9|12|cell-valign|c>|<cwith|19|19|9|12|cell-background|pastel
  green>|<cwith|19|19|12|12|cell-rborder|1ln>|<cwith|19|19|9|12|cell-halign|c>|<cwith|19|19|9|12|cell-valign|c>|<cwith|19|19|9|12|cell-background|pastel
  green>|<cwith|19|19|12|12|cell-rborder|1ln>|<cwith|20|21|9|12|cell-halign|c>|<cwith|20|21|9|12|cell-valign|c>|<cwith|20|21|9|12|cell-background|pastel
  green>|<cwith|20|21|12|12|cell-rborder|1ln>|<cwith|20|20|9|12|cell-halign|c>|<cwith|20|20|9|12|cell-valign|c>|<cwith|20|20|9|12|cell-background|pastel
  green>|<cwith|20|20|12|12|cell-rborder|1ln>|<cwith|20|20|9|12|cell-halign|c>|<cwith|20|20|9|12|cell-valign|c>|<cwith|20|20|9|12|cell-background|pastel
  green>|<cwith|20|20|12|12|cell-rborder|1ln>|<cwith|20|20|9|12|cell-halign|c>|<cwith|20|20|9|12|cell-valign|c>|<cwith|20|20|9|12|cell-background|pastel
  green>|<cwith|20|20|12|12|cell-rborder|1ln>|<cwith|21|21|9|12|cell-halign|c>|<cwith|21|21|9|12|cell-valign|c>|<cwith|21|21|9|12|cell-background|pastel
  green>|<cwith|21|21|12|12|cell-rborder|1ln>|<cwith|21|21|9|12|cell-halign|c>|<cwith|21|21|9|12|cell-valign|c>|<cwith|21|21|9|12|cell-background|pastel
  green>|<cwith|21|21|12|12|cell-rborder|1ln>|<cwith|21|21|9|12|cell-halign|c>|<cwith|21|21|9|12|cell-valign|c>|<cwith|21|21|9|12|cell-background|pastel
  green>|<cwith|21|21|12|12|cell-rborder|1ln>|<cwith|21|21|9|12|cell-halign|c>|<cwith|21|21|9|12|cell-valign|c>|<cwith|21|21|9|12|cell-background|pastel
  green>|<cwith|21|21|12|12|cell-rborder|1ln>|<cwith|21|21|9|12|cell-halign|c>|<cwith|21|21|9|12|cell-valign|c>|<cwith|21|21|9|12|cell-background|pastel
  green>|<cwith|21|21|12|12|cell-rborder|1ln>|<cwith|21|21|9|12|cell-halign|c>|<cwith|21|21|9|12|cell-valign|c>|<cwith|21|21|9|12|cell-background|pastel
  green>|<cwith|21|21|12|12|cell-rborder|1ln>|<cwith|21|21|9|12|cell-halign|c>|<cwith|21|21|9|12|cell-valign|c>|<cwith|21|21|9|12|cell-background|pastel
  green>|<cwith|21|21|12|12|cell-rborder|1ln>|<cwith|21|21|9|12|cell-halign|c>|<cwith|21|21|9|12|cell-valign|c>|<cwith|21|21|9|12|cell-background|pastel
  green>|<cwith|21|21|12|12|cell-rborder|1ln>|<cwith|22|23|9|12|cell-halign|c>|<cwith|22|23|9|12|cell-valign|c>|<cwith|22|23|9|12|cell-background|pastel
  green>|<cwith|22|23|12|12|cell-rborder|1ln>|<cwith|22|22|9|12|cell-halign|c>|<cwith|22|22|9|12|cell-valign|c>|<cwith|22|22|9|12|cell-background|pastel
  green>|<cwith|22|22|12|12|cell-rborder|1ln>|<cwith|22|22|9|12|cell-halign|c>|<cwith|22|22|9|12|cell-valign|c>|<cwith|22|22|9|12|cell-background|pastel
  green>|<cwith|22|22|12|12|cell-rborder|1ln>|<cwith|22|22|9|12|cell-halign|c>|<cwith|22|22|9|12|cell-valign|c>|<cwith|22|22|9|12|cell-background|pastel
  green>|<cwith|22|22|12|12|cell-rborder|1ln>|<cwith|23|23|9|12|cell-halign|c>|<cwith|23|23|9|12|cell-valign|c>|<cwith|23|23|9|12|cell-background|pastel
  green>|<cwith|23|23|12|12|cell-rborder|1ln>|<cwith|23|23|9|12|cell-halign|c>|<cwith|23|23|9|12|cell-valign|c>|<cwith|23|23|9|12|cell-background|pastel
  green>|<cwith|23|23|12|12|cell-rborder|1ln>|<cwith|23|23|9|12|cell-halign|c>|<cwith|23|23|9|12|cell-valign|c>|<cwith|23|23|9|12|cell-background|pastel
  green>|<cwith|23|23|12|12|cell-rborder|1ln>|<cwith|23|23|9|12|cell-halign|c>|<cwith|23|23|9|12|cell-valign|c>|<cwith|23|23|9|12|cell-background|pastel
  green>|<cwith|23|23|12|12|cell-rborder|1ln>|<cwith|23|23|9|12|cell-halign|c>|<cwith|23|23|9|12|cell-valign|c>|<cwith|23|23|9|12|cell-background|pastel
  green>|<cwith|23|23|12|12|cell-rborder|1ln>|<cwith|23|23|9|12|cell-halign|c>|<cwith|23|23|9|12|cell-valign|c>|<cwith|23|23|9|12|cell-background|pastel
  green>|<cwith|23|23|12|12|cell-rborder|1ln>|<cwith|23|23|9|12|cell-halign|c>|<cwith|23|23|9|12|cell-valign|c>|<cwith|23|23|9|12|cell-background|pastel
  green>|<cwith|23|23|12|12|cell-rborder|1ln>|<cwith|23|23|9|12|cell-halign|c>|<cwith|23|23|9|12|cell-valign|c>|<cwith|23|23|9|12|cell-background|pastel
  green>|<cwith|23|23|12|12|cell-rborder|1ln>|<cwith|24|25|9|12|cell-halign|c>|<cwith|24|25|9|12|cell-valign|c>|<cwith|24|25|9|12|cell-background|pastel
  green>|<cwith|24|25|12|12|cell-rborder|1ln>|<cwith|24|24|9|12|cell-halign|c>|<cwith|24|24|9|12|cell-valign|c>|<cwith|24|24|9|12|cell-background|pastel
  green>|<cwith|24|24|12|12|cell-rborder|1ln>|<cwith|24|24|9|12|cell-halign|c>|<cwith|24|24|9|12|cell-valign|c>|<cwith|24|24|9|12|cell-background|pastel
  green>|<cwith|24|24|12|12|cell-rborder|1ln>|<cwith|24|24|9|12|cell-halign|c>|<cwith|24|24|9|12|cell-valign|c>|<cwith|24|24|9|12|cell-background|pastel
  green>|<cwith|24|24|12|12|cell-rborder|1ln>|<cwith|25|25|9|12|cell-halign|c>|<cwith|25|25|9|12|cell-valign|c>|<cwith|25|25|9|12|cell-background|pastel
  green>|<cwith|25|25|12|12|cell-rborder|1ln>|<cwith|25|25|9|12|cell-halign|c>|<cwith|25|25|9|12|cell-valign|c>|<cwith|25|25|9|12|cell-background|pastel
  green>|<cwith|25|25|12|12|cell-rborder|1ln>|<cwith|25|25|9|12|cell-halign|c>|<cwith|25|25|9|12|cell-valign|c>|<cwith|25|25|9|12|cell-background|pastel
  green>|<cwith|25|25|12|12|cell-rborder|1ln>|<cwith|25|25|9|12|cell-halign|c>|<cwith|25|25|9|12|cell-valign|c>|<cwith|25|25|9|12|cell-background|pastel
  green>|<cwith|25|25|12|12|cell-rborder|1ln>|<cwith|25|25|9|12|cell-halign|c>|<cwith|25|25|9|12|cell-valign|c>|<cwith|25|25|9|12|cell-background|pastel
  green>|<cwith|25|25|12|12|cell-rborder|1ln>|<cwith|25|25|9|12|cell-halign|c>|<cwith|25|25|9|12|cell-valign|c>|<cwith|25|25|9|12|cell-background|pastel
  green>|<cwith|25|25|12|12|cell-rborder|1ln>|<cwith|25|25|9|12|cell-halign|c>|<cwith|25|25|9|12|cell-valign|c>|<cwith|25|25|9|12|cell-background|pastel
  green>|<cwith|25|25|12|12|cell-rborder|1ln>|<cwith|25|25|9|12|cell-halign|c>|<cwith|25|25|9|12|cell-valign|c>|<cwith|25|25|9|12|cell-background|pastel
  green>|<cwith|25|25|12|12|cell-rborder|1ln>|<cwith|26|27|9|12|cell-halign|c>|<cwith|26|27|9|12|cell-valign|c>|<cwith|26|27|9|12|cell-background|pastel
  green>|<cwith|26|27|12|12|cell-rborder|1ln>|<cwith|26|26|9|12|cell-halign|c>|<cwith|26|26|9|12|cell-valign|c>|<cwith|26|26|9|12|cell-background|pastel
  green>|<cwith|26|26|12|12|cell-rborder|1ln>|<cwith|26|26|9|12|cell-halign|c>|<cwith|26|26|9|12|cell-valign|c>|<cwith|26|26|9|12|cell-background|pastel
  green>|<cwith|26|26|12|12|cell-rborder|1ln>|<cwith|26|26|9|12|cell-halign|c>|<cwith|26|26|9|12|cell-valign|c>|<cwith|26|26|9|12|cell-background|pastel
  green>|<cwith|26|26|12|12|cell-rborder|1ln>|<cwith|27|27|9|12|cell-halign|c>|<cwith|27|27|9|12|cell-valign|c>|<cwith|27|27|9|12|cell-background|pastel
  green>|<cwith|27|27|12|12|cell-rborder|1ln>|<cwith|27|27|9|12|cell-halign|c>|<cwith|27|27|9|12|cell-valign|c>|<cwith|27|27|9|12|cell-background|pastel
  green>|<cwith|27|27|12|12|cell-rborder|1ln>|<cwith|27|27|9|12|cell-halign|c>|<cwith|27|27|9|12|cell-valign|c>|<cwith|27|27|9|12|cell-background|pastel
  green>|<cwith|27|27|12|12|cell-rborder|1ln>|<cwith|27|27|9|12|cell-halign|c>|<cwith|27|27|9|12|cell-valign|c>|<cwith|27|27|9|12|cell-background|pastel
  green>|<cwith|27|27|12|12|cell-rborder|1ln>|<cwith|27|27|9|12|cell-halign|c>|<cwith|27|27|9|12|cell-valign|c>|<cwith|27|27|9|12|cell-background|pastel
  green>|<cwith|27|27|12|12|cell-rborder|1ln>|<cwith|27|27|9|12|cell-halign|c>|<cwith|27|27|9|12|cell-valign|c>|<cwith|27|27|9|12|cell-background|pastel
  green>|<cwith|27|27|12|12|cell-rborder|1ln>|<cwith|27|27|9|12|cell-halign|c>|<cwith|27|27|9|12|cell-valign|c>|<cwith|27|27|9|12|cell-background|pastel
  green>|<cwith|27|27|12|12|cell-rborder|1ln>|<cwith|27|27|9|12|cell-halign|c>|<cwith|27|27|9|12|cell-valign|c>|<cwith|27|27|9|12|cell-background|pastel
  green>|<cwith|27|27|12|12|cell-rborder|1ln>|<cwith|28|29|9|12|cell-halign|c>|<cwith|28|29|9|12|cell-valign|c>|<cwith|28|29|9|12|cell-background|pastel
  green>|<cwith|28|29|12|12|cell-rborder|1ln>|<cwith|28|28|9|12|cell-halign|c>|<cwith|28|28|9|12|cell-valign|c>|<cwith|28|28|9|12|cell-background|pastel
  green>|<cwith|28|28|12|12|cell-rborder|1ln>|<cwith|28|28|9|12|cell-halign|c>|<cwith|28|28|9|12|cell-valign|c>|<cwith|28|28|9|12|cell-background|pastel
  green>|<cwith|28|28|12|12|cell-rborder|1ln>|<cwith|28|28|9|12|cell-halign|c>|<cwith|28|28|9|12|cell-valign|c>|<cwith|28|28|9|12|cell-background|pastel
  green>|<cwith|28|28|12|12|cell-rborder|1ln>|<cwith|29|29|9|12|cell-halign|c>|<cwith|29|29|9|12|cell-valign|c>|<cwith|29|29|9|12|cell-background|pastel
  green>|<cwith|29|29|12|12|cell-rborder|1ln>|<cwith|29|29|9|12|cell-halign|c>|<cwith|29|29|9|12|cell-valign|c>|<cwith|29|29|9|12|cell-background|pastel
  green>|<cwith|29|29|12|12|cell-rborder|1ln>|<cwith|29|29|9|12|cell-halign|c>|<cwith|29|29|9|12|cell-valign|c>|<cwith|29|29|9|12|cell-background|pastel
  green>|<cwith|29|29|12|12|cell-rborder|1ln>|<cwith|29|29|9|12|cell-halign|c>|<cwith|29|29|9|12|cell-valign|c>|<cwith|29|29|9|12|cell-background|pastel
  green>|<cwith|29|29|12|12|cell-rborder|1ln>|<cwith|29|29|9|12|cell-halign|c>|<cwith|29|29|9|12|cell-valign|c>|<cwith|29|29|9|12|cell-background|pastel
  green>|<cwith|29|29|12|12|cell-rborder|1ln>|<cwith|29|29|9|12|cell-halign|c>|<cwith|29|29|9|12|cell-valign|c>|<cwith|29|29|9|12|cell-background|pastel
  green>|<cwith|29|29|12|12|cell-rborder|1ln>|<cwith|29|29|9|12|cell-halign|c>|<cwith|29|29|9|12|cell-valign|c>|<cwith|29|29|9|12|cell-background|pastel
  green>|<cwith|29|29|12|12|cell-rborder|1ln>|<cwith|29|29|9|12|cell-halign|c>|<cwith|29|29|9|12|cell-valign|c>|<cwith|29|29|9|12|cell-background|pastel
  green>|<cwith|29|29|12|12|cell-rborder|1ln>|<cwith|30|31|9|12|cell-halign|c>|<cwith|30|31|9|12|cell-valign|c>|<cwith|30|31|9|12|cell-background|pastel
  green>|<cwith|30|31|12|12|cell-rborder|1ln>|<cwith|30|30|9|12|cell-halign|c>|<cwith|30|30|9|12|cell-valign|c>|<cwith|30|30|9|12|cell-background|pastel
  green>|<cwith|30|30|12|12|cell-rborder|1ln>|<cwith|30|30|9|12|cell-halign|c>|<cwith|30|30|9|12|cell-valign|c>|<cwith|30|30|9|12|cell-background|pastel
  green>|<cwith|30|30|12|12|cell-rborder|1ln>|<cwith|30|30|9|12|cell-halign|c>|<cwith|30|30|9|12|cell-valign|c>|<cwith|30|30|9|12|cell-background|pastel
  green>|<cwith|30|30|12|12|cell-rborder|1ln>|<cwith|31|31|9|12|cell-halign|c>|<cwith|31|31|9|12|cell-valign|c>|<cwith|31|31|9|12|cell-background|pastel
  green>|<cwith|31|31|12|12|cell-rborder|1ln>|<cwith|31|31|9|12|cell-halign|c>|<cwith|31|31|9|12|cell-valign|c>|<cwith|31|31|9|12|cell-background|pastel
  green>|<cwith|31|31|12|12|cell-rborder|1ln>|<cwith|31|31|9|12|cell-halign|c>|<cwith|31|31|9|12|cell-valign|c>|<cwith|31|31|9|12|cell-background|pastel
  green>|<cwith|31|31|12|12|cell-rborder|1ln>|<cwith|31|31|9|12|cell-halign|c>|<cwith|31|31|9|12|cell-valign|c>|<cwith|31|31|9|12|cell-background|pastel
  green>|<cwith|31|31|12|12|cell-rborder|1ln>|<cwith|31|31|9|12|cell-halign|c>|<cwith|31|31|9|12|cell-valign|c>|<cwith|31|31|9|12|cell-background|pastel
  green>|<cwith|31|31|12|12|cell-rborder|1ln>|<cwith|31|31|9|12|cell-halign|c>|<cwith|31|31|9|12|cell-valign|c>|<cwith|31|31|9|12|cell-background|pastel
  green>|<cwith|31|31|12|12|cell-rborder|1ln>|<cwith|31|31|9|12|cell-halign|c>|<cwith|31|31|9|12|cell-valign|c>|<cwith|31|31|9|12|cell-background|pastel
  green>|<cwith|31|31|12|12|cell-rborder|1ln>|<cwith|31|31|9|12|cell-halign|c>|<cwith|31|31|9|12|cell-valign|c>|<cwith|31|31|9|12|cell-background|pastel
  green>|<cwith|31|31|12|12|cell-rborder|1ln>|<cwith|32|33|9|12|cell-halign|c>|<cwith|32|33|9|12|cell-valign|c>|<cwith|32|33|9|12|cell-background|pastel
  green>|<cwith|32|33|12|12|cell-rborder|1ln>|<cwith|32|32|9|12|cell-halign|c>|<cwith|32|32|9|12|cell-valign|c>|<cwith|32|32|9|12|cell-background|pastel
  green>|<cwith|32|32|12|12|cell-rborder|1ln>|<cwith|32|32|9|12|cell-halign|c>|<cwith|32|32|9|12|cell-valign|c>|<cwith|32|32|9|12|cell-background|pastel
  green>|<cwith|32|32|12|12|cell-rborder|1ln>|<cwith|32|32|9|12|cell-halign|c>|<cwith|32|32|9|12|cell-valign|c>|<cwith|32|32|9|12|cell-background|pastel
  green>|<cwith|32|32|12|12|cell-rborder|1ln>|<cwith|33|33|9|12|cell-halign|c>|<cwith|33|33|9|12|cell-valign|c>|<cwith|33|33|9|12|cell-background|pastel
  green>|<cwith|33|33|12|12|cell-rborder|1ln>|<cwith|33|33|9|12|cell-halign|c>|<cwith|33|33|9|12|cell-valign|c>|<cwith|33|33|9|12|cell-background|pastel
  green>|<cwith|33|33|12|12|cell-rborder|1ln>|<cwith|33|33|9|12|cell-halign|c>|<cwith|33|33|9|12|cell-valign|c>|<cwith|33|33|9|12|cell-background|pastel
  green>|<cwith|33|33|12|12|cell-rborder|1ln>|<cwith|33|33|9|12|cell-halign|c>|<cwith|33|33|9|12|cell-valign|c>|<cwith|33|33|9|12|cell-background|pastel
  green>|<cwith|33|33|12|12|cell-rborder|1ln>|<cwith|33|33|9|12|cell-halign|c>|<cwith|33|33|9|12|cell-valign|c>|<cwith|33|33|9|12|cell-background|pastel
  green>|<cwith|33|33|12|12|cell-rborder|1ln>|<cwith|33|33|9|12|cell-halign|c>|<cwith|33|33|9|12|cell-valign|c>|<cwith|33|33|9|12|cell-background|pastel
  green>|<cwith|33|33|12|12|cell-rborder|1ln>|<cwith|33|33|9|12|cell-halign|c>|<cwith|33|33|9|12|cell-valign|c>|<cwith|33|33|9|12|cell-background|pastel
  green>|<cwith|33|33|12|12|cell-rborder|1ln>|<cwith|33|33|9|12|cell-halign|c>|<cwith|33|33|9|12|cell-valign|c>|<cwith|33|33|9|12|cell-background|pastel
  green>|<cwith|33|33|12|12|cell-rborder|1ln>|<cwith|2|2|1|1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-bborder|1ln>|<cwith|33|33|1|1|cell-bborder|1ln>|<cwith|2|-1|1|1|cell-lborder|1ln>|<cwith|2|-1|1|1|cell-rborder|0ln>|<cwith|2|-1|2|2|cell-lborder|0ln>|<table|<row|<cell|a<rsub|2>>|<cell|a<rsub|1>>|<cell|a<rsub|0>>|<cell|R<rsub|0>>|<cell|R<rsub|1>>|<cell|R<rsub|2>>|<cell|R<rsub|3>>|<cell|R<rsub|VIP>>|<cell|UP>|<cell|STOP>|<cell|DOWN>|<cell|HEX>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|<shell|0x0>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|<shell|0x2>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x3>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x3>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<shell|0x3>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x3>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<shell|0x3>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x3>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x3>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x3>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x3>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x3>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x3>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x3>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x3>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x3>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x1>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x3>>>>>>>>>>>>|Comparator
  truth table for <math|a<rsub|2>=1,a<rsub|1>=0,a<rsub|0>=0>>

  To implement the comparator a ROM (Read Only Memory) will be used,
  therefore the following settings must be set:

  <big-figure|<image|imgs/settings-rom-comparator.png|0.3par|||>|ROM settings
  for comparator>

  by inserting the HEX column of the previous 5 tables in the <shell|Data>
  field. Therefore the final circuit is the following:

  <big-figure|<image|imgs/requests-management.png|0.8par|||>|Request
  Management<label|requests-management>>

  <subsection|Direction buffering>

  At this point the issue is a bit delicate. We need to find a way to
  memorize (and this already gives us an important indication) from which
  direction the elevator arrives at a generic floor <math|x>. That is,
  whether it arrived from the upper floors or from the lower floors. Or
  rather, whether once it arrived at a floor <math|x> it was at a floor
  <math|x+i> or <math|x-i>, with <math|i\<in\><around*|[||\<nobracket\>>0,4]>
  (where the upper limit 4 would be the <with|font-shape|italic|VIP floor>).
  So we need a signal that must be activated and memorized when the direction
  is downwards (the upward case manifests itself by duality because if the
  elevator does not have the downward direction it must necessarily have it
  upwards), to indicate to the arrival floor that we arrived there by going
  downwards. This signal, which we will indicate with <math|WAS<rsub|DOWN>>,
  can be memorized in an SR flip-flop, but who sets and/or resets it? We will
  need two other dedicated signals. The signal that will take care of setting
  <math|WAS<rsub|DOWN>=1> will have to be <math|DIR<rsub|DOWN>> which will
  depend on the elevator state finite automaton, so we will talk about it
  later. While the signal that will take care of setting
  <math|WAS<rsub|DOWN>=0> (that is, resetting it) is precisely the
  <math|DOWN> signal that we created in Fig. <reference|requests-management>,
  which is always set to 0 except in the case where an <math|R<rsub|x>>
  request occurs downwards. This means that the SR flip-flop must have the
  <math|RESET> input negated.

  <big-figure|<image|imgs/direction-storage.png|0.25par|||>|Direction
  buffering<label|direction-storage>>

  <subsection|Finite State Automaton for State Management>

  Once all the signals we have discussed so far have been created, it is
  clear that they need to be inserted as inputs for the finite state
  automaton dedicated to managing the elevator states. So, to recap, we would
  have the input signals <math|CK<rsub|2>, DESTINATION, UP, STOP, DOWN,
  WAS<rsub|DOWN>> plus the <math|TIMEOUT> signal, which we have not yet
  covered in depth, and finally the <math|R<rsub|VIP>> request signal for the
  management dedicated to the <with|font-shape|italic|VIP floor>. Naturally,
  the transitions <math|z<rsub|2>, z<rsub|1>, z<rsub|0>> are added to these,
  which are inputs by definition. However, even if the elevator does not have
  an explicit output, we can still make the finite state automaton generate
  outputs for us. In particular, in the circuit in Fig.
  <reference|direction-storage> we talked about the <math|DIR<rsub|DOWN>>
  signal. This signal will be an output of the finite state automaton
  together with the <math|DIR<rsub|UP>> signal, which will be useful for
  creating the finite state automaton for managing the elevator floors. So,
  as you can see, it is clear that the states of the finite state automaton
  for managing the elevator states have as states the encoding found in Table
  <reference|elevator-states>. Therefore, we can construct a relationship
  between these states using the following finite state automaton:

  <big-figure|<image|imgs/FSM-states.png|1par|||>|Finite State Automaton for
  State Management>

  consultable directly from the <shell|FSM-states.fsm> file through the
  Digital simulator. Therefore, by going to the appropriate menu
  <shell|Create \<gtr\> State Transition Table> and then, always from the
  appropriate menu, on <shell|Create \<gtr\> Circuit Variants \<gtr\> Circuit
  with LUTs> you get the following sequential circuit:

  <big-figure|<image|imgs/states-seq-circuit-incomplete.png|0.5par|||>|(Incomplete)
  sequential circuit of the finite state automaton for state
  management<label|states-seq-circuit-incomplete>>

  The circuit shown in Fig. <reference|states-seq-circuit-incomplete> has
  been slightly modified from the one automatically generated by Digital. In
  particular, the input and output buttons have been removed, because we use
  the <with|font-shape|italic|tunnel> component to carry a certain data from
  one part of the circuit to another.

  <subsubsection|7-segment display for timer>

  Here too we will implement a decoder to display the Timer count on a
  7-segment common cathode display. The design is very similar to the one
  previously created for the display of the current plane, however, in this
  case, once again, the number of bits to be decoded changes. Therefore we
  can construct the following truth table (note that starting from 0 and
  arriving at 8, 9 seconds have actually passed):

  <big-table|<tabular|<tformat|<table|<row|<cell|<math|<tformat|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|-1|cell-valign|c>|<cwith|1|4|1|1|cell-halign|c>|<cwith|1|4|1|1|cell-valign|c>|<cwith|1|-1|1|5|cell-background|pastel
  blue>|<cwith|1|-1|6|13|cell-background|pastel
  green>|<cwith|1|-1|1|1|cell-lborder|1ln>|<cwith|1|-1|13|13|cell-rborder|1ln>|<cwith|1|1|1|-1|cell-tborder|1ln>|<cwith|1|1|1|-1|cell-bborder|1ln>|<cwith|2|2|1|-1|cell-tborder|1ln>|<cwith|1|1|1|1|cell-lborder|1ln>|<cwith|1|1|13|13|cell-rborder|1ln>|<cwith|6|6|1|-1|cell-tborder|0ln>|<cwith|5|5|1|-1|cell-bborder|0ln>|<cwith|6|6|1|-1|cell-bborder|0ln>|<cwith|7|7|1|-1|cell-tborder|0ln>|<cwith|6|6|1|1|cell-lborder|1ln>|<cwith|2|6|13|13|cell-halign|c>|<cwith|2|6|13|13|cell-valign|c>|<cwith|2|6|13|13|cell-background|pastel
  green>|<cwith|2|6|13|13|cell-rborder|1ln>|<cwith|2|2|13|13|cell-tborder|1ln>|<cwith|6|6|13|13|cell-tborder|0ln>|<cwith|5|5|13|13|cell-bborder|0ln>|<cwith|6|6|13|13|cell-bborder|0ln>|<cwith|7|7|13|13|cell-tborder|0ln>|<cwith|6|6|13|13|cell-lborder|0ln>|<cwith|6|6|12|12|cell-rborder|0ln>|<cwith|6|6|13|13|cell-rborder|1ln>|<cwith|10|10|1|-1|cell-tborder|0ln>|<cwith|9|9|1|-1|cell-bborder|0ln>|<cwith|10|10|1|-1|cell-bborder|1ln>|<cwith|10|10|1|1|cell-lborder|1ln>|<cwith|10|10|13|13|cell-rborder|1ln>|<table|<row|<cell|Seconds>|<cell|t<rsub|3>>|<cell|t<rsub|2>>|<cell|t<rsub|1>>|<cell|t<rsub|0>>|<cell|a<rsub|t>>|<cell|b<rsub|t>>|<cell|c<rsub|t>>|<cell|d<rsub|t>>|<cell|e<rsub|t>>|<cell|f<rsub|t>>|<cell|g<rsub|t>>|<cell|HEX>>|<row|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|<shell|0x7E>>>|<row|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|<shell|0x30>>>|<row|<cell|2>|<cell|0>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|<shell|0x6D>>>|<row|<cell|3>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|<shell|0x79>>>|<row|<cell|4>|<cell|0>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x33>>>|<row|<cell|5>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|<shell|0x5B>>>|<row|<cell|6>|<cell|0>|<cell|1>|<cell|1>|<cell|0>|<cell|1>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|<shell|0x5F>>>|<row|<cell|7>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|0>|<cell|<shell|0x70>>>|<row|<cell|8>|<cell|1>|<cell|0>|<cell|0>|<cell|0>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|1>|<cell|<shell|0x7F>>>>>>>>>>>|Decoder
  truth table for 7-segment display<label|dec-timer>>

  At this point we have everything we need to make the decoder, so since we
  would have 4 input bits and 7 output bits we should set the ROM with the
  following settings:

  <\big-figure|<image|imgs/settings-rom-timer.png|0.3par|||>>
    ROM settings for 7-segment display
  </big-figure>

  by inserting the HEX column in Table <reference|dec-timer> in the
  <shell|Data> field. Therefore the final circuit is the following:

  <big-figure|<image|imgs/timer-7-seg.png|0.5par|||>|Decoder for 7-segment
  display>

  Finally the \Pdp\Q input of the 7-segment display handles the dot, but
  since we don't need it, it has been connected directly to GND.

  <subsubsection|Timer Management>

  But when should the Timer be activated? Well, only in the door opening
  state (i.e. <math|OPEN>) which corresponds to
  <math|z<rsub|2>=0,z<rsub|1>=1,z<rsub|0>=1>. So we can create the following
  circuit which connects directly to the previous one:

  <big-figure|<image|imgs/timer-circuit.png|0.3par|||>|Timer management in
  finite state automaton for elevator state management>

  Therefore the complete sequential circuit for managing the elevator states
  is as follows:

  <big-figure|<image|imgs/states-seq-circuit-complete.png|0.5par|||>|Complete
  sequential circuit of the finite state automaton for state management>

  by appropriately connecting the Timer overflow output to the <math|TIMEOUT>
  signal. So in case of overflow, that is when the Timer reaches
  <math|(9)<rsub|10>>, we will have <math|TIMEOUT=1>.

  <subsection|Finite State Automaton for Floor Management>

  We are almost at the end of our design. All that remains is the creation of
  the finite state automaton for the management of the elevator floors. It
  will have the <math|CK<rsub|2>> signal as input together with the outputs
  generated by the finite state automaton for the management of the elevator
  states, namely <math|DIR<rsub|DOWN>> and <math|DIR<rsub|UP>>. Naturally,
  the transitions <math|y<rsub|2>,y<rsub|1>,y<rsub|0>> are added to these,
  which are inputs by definition. Therefore, as you can imagine, it is clear
  that the states of the finite state automaton for the management of the
  elevator floors have as states the encoding found in Table
  <reference|elevator-floor>. Therefore, we can build a relationship between
  these states using the following finite state automaton:

  <big-figure|<image|imgs/FSM-floor.png|1par|||>|Finite State Automaton for
  Plan Management>

  consultable directly from the <shell|FSM-floor.fsm> file through the
  Digital simulator. Therefore, by going to the appropriate menu
  <shell|Create \<gtr\> State Transition Table> (I recommend changing the
  variables from <math|z<rsub|\<ast\>>> to <math|y<rsub|\<ast\>>> with a
  right mouse click on the name) and subsequently, always from the
  appropriate menu, on <shell|Create \<gtr\> Circuit Variants \<gtr\> Circuit
  with LUTs> you obtain the following sequential circuit:

  <big-figure|<image|imgs/floor-seq-circuit.png|0.5par|||>|Complete
  sequential circuit of finite state automaton for plan
  management<label|floor-seq-circuit>>

  Also in this case the circuit shown in Fig. <reference|floor-seq-circuit>
  has been slightly modified compared to the one automatically generated by
  Digital. In particular the input and output buttons have been removed,
  because we use the <with|font-shape|italic|tunnel> component to carry a
  certain data from one part of the circuit to another.

  <subsection|Conclusion>

  First of all I conclude by showing the complete final circuit that realizes
  the control system for the elevator:

  <big-figure|<image|imgs/final-circuit.png|1par|||>|Complete circuit for the
  management of an elevator control system>

  consultable directly from the <shell|circuit.dig> file through the Digital
  simulator. Finally I want to point out that such a design nowadays is very
  \Pold school\Q in the sense that probably, both for a question of costs and
  for a question of time, it is easier to use programmable embedded boards.
  However I admit that it is still an exercise in thinking outside the
  canonical schemes, exactly what an engineer must be able to do. It would be
  interesting to carry on the design trying to optimize the number of gates
  to a minimum and then prototype the entire project on PCB using software
  like KiCAD, adding real sensors, in place of the
  <math|A<rsub|0>,\<ldots\>A<rsub|3>,A<rsub|VIP>> signals, motors, and in
  general everything needed to build an elevator.
</body>

<\initial>
  <\collection>
    <associate|font-base-size|10>
    <associate|page-medium|paper>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|7-seg|<tuple|1|4>>
    <associate|auto-1|<tuple|1|1>>
    <associate|auto-10|<tuple|2|3>>
    <associate|auto-11|<tuple|2.1|3>>
    <associate|auto-12|<tuple|2.2|3>>
    <associate|auto-13|<tuple|2.3|4>>
    <associate|auto-14|<tuple|1|4>>
    <associate|auto-15|<tuple|2|4>>
    <associate|auto-16|<tuple|3|4>>
    <associate|auto-17|<tuple|3|5>>
    <associate|auto-18|<tuple|4|5>>
    <associate|auto-19|<tuple|2.4|5>>
    <associate|auto-2|<tuple|1.1|1>>
    <associate|auto-20|<tuple|4|5>>
    <associate|auto-21|<tuple|5|6>>
    <associate|auto-22|<tuple|6|6>>
    <associate|auto-23|<tuple|5|6>>
    <associate|auto-24|<tuple|6|7>>
    <associate|auto-25|<tuple|7|7>>
    <associate|auto-26|<tuple|8|7>>
    <associate|auto-27|<tuple|9|8>>
    <associate|auto-28|<tuple|2.5|8>>
    <associate|auto-29|<tuple|10|8>>
    <associate|auto-3|<tuple|1.2|1>>
    <associate|auto-30|<tuple|2.6|8>>
    <associate|auto-31|<tuple|11|9>>
    <associate|auto-32|<tuple|2.7|9>>
    <associate|auto-33|<tuple|12|9>>
    <associate|auto-34|<tuple|2.8|9>>
    <associate|auto-35|<tuple|13|9>>
    <associate|auto-36|<tuple|2.9|10>>
    <associate|auto-37|<tuple|7|10>>
    <associate|auto-38|<tuple|14|10>>
    <associate|auto-39|<tuple|15|11>>
    <associate|auto-4|<tuple|1.3|2>>
    <associate|auto-40|<tuple|16|11>>
    <associate|auto-41|<tuple|8|11>>
    <associate|auto-42|<tuple|9|12>>
    <associate|auto-43|<tuple|10|12>>
    <associate|auto-44|<tuple|11|13>>
    <associate|auto-45|<tuple|12|13>>
    <associate|auto-46|<tuple|17|14>>
    <associate|auto-47|<tuple|18|14>>
    <associate|auto-48|<tuple|2.10|14>>
    <associate|auto-49|<tuple|19|14>>
    <associate|auto-5|<tuple|1|2>>
    <associate|auto-50|<tuple|2.11|14>>
    <associate|auto-51|<tuple|20|15>>
    <associate|auto-52|<tuple|21|15>>
    <associate|auto-53|<tuple|2.11.1|16>>
    <associate|auto-54|<tuple|13|16>>
    <associate|auto-55|<tuple|22|16>>
    <associate|auto-56|<tuple|23|16>>
    <associate|auto-57|<tuple|2.11.2|17>>
    <associate|auto-58|<tuple|24|17>>
    <associate|auto-59|<tuple|25|17>>
    <associate|auto-6|<tuple|2|2>>
    <associate|auto-60|<tuple|2.12|17>>
    <associate|auto-61|<tuple|26|18>>
    <associate|auto-62|<tuple|27|18>>
    <associate|auto-63|<tuple|2.13|18>>
    <associate|auto-64|<tuple|28|19>>
    <associate|auto-7|<tuple|1.4|2>>
    <associate|auto-8|<tuple|1.5|3>>
    <associate|auto-9|<tuple|1.6|3>>
    <associate|d1-d2|<tuple|5|6>>
    <associate|d3-d4|<tuple|6|7>>
    <associate|dec-timer|<tuple|13|16>>
    <associate|direction-storage|<tuple|19|14>>
    <associate|elevator-floor|<tuple|2|2>>
    <associate|elevator-states|<tuple|1|2>>
    <associate|floor-detector|<tuple|12|9>>
    <associate|floor-seq-circuit|<tuple|27|18>>
    <associate|requests-management|<tuple|18|14>>
    <associate|states-seq-circuit-incomplete|<tuple|21|15>>
    <associate|truth-table-7-seg|<tuple|3|4>>
    <associate|truth-table-encoder|<tuple|7|10>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|figure>
      <tuple|normal|<surround|<hidden-binding|<tuple>|1>||7-segment
      display>|<pageref|auto-14>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|2>||Encoding numbers
      for a 7-segment display>|<pageref|auto-15>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|3>|>
        ROM settings for 7-segment display
      </surround>|<pageref|auto-17>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|4>||Decoder for
      7-segment display>|<pageref|auto-18>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|5>||16 segment
      display>|<pageref|auto-21>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|6>||Character encodings
      for a 16-segment display>|<pageref|auto-22>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|7>|>
        Impostazioni ROM per il display a 16 segmenti
      </surround>|<pageref|auto-25>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|8>||<with|mode|<quote|prog>|prog-language|<quote|shell>|font-family|<quote|rm>|Data>
      field of the ROMs>|<pageref|auto-26>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|9>||Decoder for
      16-segment display>|<pageref|auto-27>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|10>||Buffering pending
      requests>|<pageref|auto-29>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|11>||Reset
      Management>|<pageref|auto-31>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|12>||Detector for a
      generic floor>|<pageref|auto-33>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|13>||Signal for arrival
      at destination>|<pageref|auto-35>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|14>||ROM settings for
      the encoder>|<pageref|auto-38>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|15>||D Flip-Flop
      Settings>|<pageref|auto-39>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|16>||Incomplete request
      management>|<pageref|auto-40>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|17>||ROM settings for
      comparator>|<pageref|auto-46>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|18>||Request
      Management>|<pageref|auto-47>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|19>||Direction
      buffering>|<pageref|auto-49>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|20>||Finite State
      Automaton for State Management>|<pageref|auto-51>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|21>||(Incomplete)
      sequential circuit of the finite state automaton for state
      management>|<pageref|auto-52>>

      <tuple|normal|<\surround|<hidden-binding|<tuple>|22>|>
        ROM settings for 7-segment display
      </surround>|<pageref|auto-55>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|23>||Decoder for
      7-segment display>|<pageref|auto-56>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|24>||Timer management
      in finite state automaton for elevator state
      management>|<pageref|auto-58>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|25>||Complete
      sequential circuit of the finite state automaton for state
      management>|<pageref|auto-59>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|26>||Finite State
      Automaton for Plan Management>|<pageref|auto-61>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|27>||Complete
      sequential circuit of finite state automaton for plan
      management>|<pageref|auto-62>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|28>||Complete circuit
      for the management of an elevator control system>|<pageref|auto-64>>
    </associate>
    <\associate|table>
      <tuple|normal|<surround|<hidden-binding|<tuple>|1>||Elevator State
      Coding>|<pageref|auto-5>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|2>||Elevator Floor
      Coding>|<pageref|auto-6>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|3>||Decoder truth table
      for 7-segment display>|<pageref|auto-16>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|4>||Conversion of
      elevator states into characters that can be represented on the 4
      16-segment displays>|<pageref|auto-20>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|5>||Decoder truth table
      for the 16-segment <with|mode|<quote|math>|D<rsub|1>> and
      <with|mode|<quote|math>|D<rsub|2>> displays>|<pageref|auto-23>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|6>||Decoder truth table
      for the 16-segment <with|mode|<quote|math>|D<rsub|3>> and
      <with|mode|<quote|math>|D<rsub|4>> displays>|<pageref|auto-24>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|7>||Encoder truth table
      for arrival signals>|<pageref|auto-37>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|8>||Comparator truth
      table for <with|mode|<quote|math>|a<rsub|2>=0,a<rsub|1>=0,a<rsub|0>=0>>|<pageref|auto-41>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|9>||Comparator truth
      table for <with|mode|<quote|math>|a<rsub|2>=0,a<rsub|1>=0,a<rsub|0>=1>>|<pageref|auto-42>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|10>||Comparator truth
      table for <with|mode|<quote|math>|a<rsub|2>=0,a<rsub|1>=1,a<rsub|0>=0>>|<pageref|auto-43>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|11>||Comparator truth
      table for <with|mode|<quote|math>|a<rsub|2>=0,a<rsub|1>=1,a<rsub|0>=1>>|<pageref|auto-44>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|12>||Comparator truth
      table for <with|mode|<quote|math>|a<rsub|2>=1,a<rsub|1>=0,a<rsub|0>=0>>|<pageref|auto-45>>

      <tuple|normal|<surround|<hidden-binding|<tuple>|13>||Decoder truth
      table for 7-segment display>|<pageref|auto-54>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|1<space|2spc>Homework>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      <with|par-left|<quote|1tab>|1.1<space|2spc>Introduction
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>>

      <with|par-left|<quote|1tab>|1.2<space|2spc>Floor call management and
      movement <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|1.3<space|2spc>Codings
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-4>>

      <with|par-left|<quote|1tab>|1.4<space|2spc>Inputs
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|1.5<space|2spc>How to make the circuit
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>>

      <with|par-left|<quote|1tab>|1.6<space|2spc>Suggestions
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|2<space|2spc>Solution>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10><vspace|0.5fn>

      <with|par-left|<quote|1tab>|2.1<space|2spc>Introduction
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|1tab>|2.2<space|2spc>Design choices
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <with|par-left|<quote|1tab>|2.3<space|2spc>7-segment display for floors
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      <with|par-left|<quote|1tab>|2.4<space|2spc>16-segment display for
      status <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19>>

      <with|par-left|<quote|1tab>|2.5<space|2spc>Buffering pending requests
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-28>>

      <with|par-left|<quote|1tab>|2.6<space|2spc>Reset Management
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-30>>

      <with|par-left|<quote|1tab>|2.7<space|2spc>Detector for a generic floor
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-32>>

      <with|par-left|<quote|1tab>|2.8<space|2spc>Signal for arrival at
      destination <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-34>>

      <with|par-left|<quote|1tab>|2.9<space|2spc>Request Management
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-36>>

      <with|par-left|<quote|1tab>|2.10<space|2spc>Direction buffering
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-48>>

      <with|par-left|<quote|1tab>|2.11<space|2spc>Finite State Automaton for
      State Management <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-50>>

      <with|par-left|<quote|2tab>|2.11.1<space|2spc>7-segment display for
      timer <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-53>>

      <with|par-left|<quote|2tab>|2.11.2<space|2spc>Timer Management
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-57>>

      <with|par-left|<quote|1tab>|2.12<space|2spc>Finite State Automaton for
      Floor Management <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-60>>

      <with|par-left|<quote|1tab>|2.13<space|2spc>Conclusion
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-63>>
    </associate>
  </collection>
</auxiliary>