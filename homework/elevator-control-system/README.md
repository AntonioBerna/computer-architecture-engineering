# :elevator: Elevator control system

In this task, you will design and implement the control system of an elevator in a 3-story building, plus the ground floor and a final *VIP floor*, described below. The elevator can be in the following states:

- **Wait**: The elevator is waiting to be called to a floor.
- **Moving up or down**: The elevator is moving in a specific direction.
- **Stop**: The elevator stops when it arrives at a floor where a reservation has been made.
- **Opening doors**: The doors open and remain open for *9 seconds*.

An arrival sensor is installed on each floor which, when it detects the presence of the elevator, raises a signal $A_x$ to indicate that it has arrived at floor $x$.

### Floor call management and movement

The passage to a floor can be booked either from the floor itself or from inside the elevator, with the appropriate button panel. It is possible to book the passage to any floor in any state, even while the elevator is moving. The call to a specific floor is buffered in a specifically dedicated memory element and remains in the "request made" state until the elevator arrives at the floor involved in the request.

If already in motion, the elevator proceeds in its direction of travel until it has reached the last floor for which there is a call, in that direction. For example, if the elevator has reached the second floor in upward direction and there are two calls, one for the third and one for the first, the elevator will give priority to the third floor since it can be reached in the same direction of travel.

Conversely, when the elevator reaches a floor and there are only calls from floors reachable in the opposite direction, it will reverse direction.

If there is no call when the doors close, the elevator will remain (with the doors closed) in the waiting state. If in this state the elevator receives a call from the floor where it is present, it will simply open the doors.

This basic operation is modified by the last (fourth) floor: the **VIP floor**. If a request to go to the VIP floor has been received, if the elevator is moving in that direction (i.e. upwards), it will *skip all other stops* until it reaches the VIP floor. Conversely, if it is moving in the opposite direction (i.e. downwards), it will only reach the next floor for which a request to go has been received and then reverse direction.

## Codings

The elevator shall track the following states, using the following encodings:

- **Waiting state**: $z_2 = 0; z_1 = 0; z_0 = 0$;
- **Move up**: $z_2 = 0; z_1 = 0; z_0 = 1$;
- **Move down**: $z_2 = 0; z_1 = 1; z_0 = 0$;
- **Doors open**: $z_2 = 0; z_1 = 1; z_0 = 1$;
- **Stop**: $z_2 = 1; z_1 = 0; z_0 = 0$.

The stop state corresponds to the moment in which the elevator arrives at a floor for which a stop has been requested, signaled by the signal $A_x$. After stopping, the elevator must open the doors and keep them open for 9 seconds.

The elevator also needs to keep track of which floor it is on at any given moment in time. For this purpose, the following variables are used:

- **Floor T**: $y_2 = 0; y_1 = 0; y_0 = 0$;
- **Floor 1**: $y_2 = 0; y_1 = 0; y_0 = $1;
- **Floor 2**: $y_2 = 0; y_1 = 1; y_0 = 0$;
- **Floor 3**: $y_2 = 0; y_1 = 1; y_0 = $1;
- **VIP Plan**: $y_2 = 1; y_1 = 0; y_0 = 0$;

When the system starts, it can be assumed that the elevator is at floor T in the waiting state.

## Inputs

The inputs to the elevator control system are of two families: the first family consists of the previously mentioned $A_x$ signals that are raised when an elevator reaches a floor. These signals are 1 only when the elevator is detected, and then return to zero.

The second family consists of the $P_x$ signals that indicate the call to floor $x$. These signals are only 1 when the call button is pressed, and then return to zero. It is therefore necessary to buffer these signals in ways that you deem appropriate.

## How to make the circuit

The circuit solution must be inserted into the file `circuito.dig`, which can be modified using the circuit editor and simulator [Digital](https://github.com/hneemann/Digital). The simulator also allows you to test the circuit locally, so you can also check the correctness of the proposed solution locally. If the solution is proposed in a file with *a different name*, the score obtained will be zero.

The inputs and outputs of the circuit are already specified in the file `circuito.dig`. **Do not** rename or delete these terminals, otherwise it will not be possible to evaluate the submitted homework.

## Suggestions

1. To measure time, you can use a clock set to a suitable frequency and "count" the passage of time with a suitable number of states. For example, to count 5 seconds, you can use a clock set to $1 \text{Hz}$ and use 5 states. The clock in `circuito.dig` is already set to $1 \text{Hz}$.

2. It is possible to *decompose* a single state machine into multiple state machines that control the operation of different parts of the system in a coordinated manner. The state of one state machine can be used as an input to another. Likewise, the output of one state machine can become the input to another. In this way, it is possible to study the problems separately and compose a final solution.

3. State transitions are not necessarily due to the change of a single input variable. The "input characters" in this case can correspond to a boolean value calculated by an arbitrary boolean function, which processes system input signals and variables stored in appropriate memory elements in an appropriate manner. Some transitions can be "automatic", simply tied to the receipt of a certain number of clock pulses.
