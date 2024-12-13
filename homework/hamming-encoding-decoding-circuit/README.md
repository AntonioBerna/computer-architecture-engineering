# :abacus: Hamming Code Encoding/Decoding Circuit

In this exercise you are asked to design and build a circuit for encoding and decoding an 8-bit word using the **Hamming Code** with a minimum Hamming distance of 3. The circuit must be able to handle both the encoding and decoding phases, depending on the operation required.

The circuit has 13 inputs and 13 outputs, which are used differently depending on whether it operates in encoding or decoding mode. The inputs are called $d$, $p_1$, $p_2$, $d_1$, $p_4$, $d_2$, $d_3$, $d_4$, $p_8$, $d_5$, $d_6$, $d_7$, $d_8$. The outputs are called $e$, $y_1, \ldots, y_{12}$. The input $d$ (decode) indicates whether it operates in encoding mode ($d = 0$) or decoding mode ($d = 1$). The operation of the two modes is explained below.

## Encoding mode

When $d = 0$, the circuit operates in encoding mode. In this case, the input bits $p_1$, $p_2$, $p_4$, $p_8$ are *don't care conditions* and can assume any value. The data bits $d_1, \ldots, d_8$ carry the value that is intended to be encoded.

The circuit then calculates the values ​​of the parity bits according to a Hamming code (12, 8) and outputs the following values:

| Output Bits | $y_1$            | $y_2$             | $y_3$ | $y_4$             | $y_5$ | $y_6$ | $y_7$ | $y_8$             | $y_9$ | $y_{10}$ | $y_{11}$ | $y_{12}$ | $e$   |
| :---:       | :---:            | :---:             | :---: | :---:             | :---: | :---: | :---: | :---:             | :---: | :---:    | :---:    | :---:    | :---: |
| Value       | first parity bit | second parity bit | $d_1$ |  third parity bit | $d_2$ | $d_3$ | $d_4$ | fourth parity bit | $d_5$ | $d_6$    | $d_7$    | $d_8$    | 0     |

That is, the input data bits are output in the correct positions for the adopted Hamming coding and the parity bits are generated (also positioned in the correct positions).

Note that, in encoding mode, the $e$ output must always be forced to zero.

## Decoding mode

When $d = 1$, the circuit receives as input a word encoded according to the Hamming code (12, 8) and outputs the decoded (and possibly corrected) value. The output will be the following:

| Output Bits | $y1$  | $y2$  | $y3$  | $y4$  | $y5$  | $y6$  | $y7$  | $y8$  | $y9$  | $y10$ | $y11$ | $y12$ | $e$   |
| :---:       | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| Valore      | $d1$  | $d2$  | $d3$  | $d4$  | $d5$  | $d6$  | $d7$  | $d8$  | 0     | 0     | 0     | 0     | `?`   |

Where `?` means the error code: $0$ if no transmission error was detected, 1 if at least one error was detected.

If an error is detected, the circuit attempts to correct it: the syndrome is used to determine which bit needs to be inverted (and the inversion is performed). Note that the result is only meaningful if only one error has occurred.

Note that, in decoding mode, the output bits $y_9, \ldots, y_{12}$ are always forced to zero.

## Constraints

- Use only basic **logic gates** and **elementary components** (encoders, decoders, ...) for circuit design.
- You are not allowed to use pre-built error-correcting components or pre-designed circuits for Hamming code.

## How to make the circuit

The study of the problem, the analysis of the circuit and its minimization can be done on paper. The obtained circuit must be inserted into the file `circuit.dig`, which can be modified using the circuit editor and simulator [Digital](https://github.com/hneemann/Digital). The simulator also allows you to test the circuit locally, so you can also verify the correctness of the proposed solution locally.

The inputs and outputs of the circuit are already specified in the `circuit.dig` file. Do not rename these terminals, otherwise the submitted homework cannot be evaluated.

> [!NOTE]
> The best solution uses 15 logic gates and a critical path less or equal to 6. My solution uses 16 logic gates and a critical path of 5.

> [!TIP]
> It is recommended to approach the problem in stages. You can make the circuits that calculate the error, the parity bits, the syndrome separately and then join them together in a single circuit realization. This also makes it easier to test the proposed solution.
