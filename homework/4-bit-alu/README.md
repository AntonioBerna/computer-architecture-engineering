# :control_knobs: 4-bit ALU

For this exercise, you need to design a simple ALU that can work with 4-bit operands. The ALU consists of an iterative network.

> [!NOTE]
> It is not necessary to implement parallelism-based optimizations for this homework.

### Supported Operations

The ALU works on one or two operands ($a=  \langle a_3 \ a_2 \ a_1 \ a_0 \rangle$ and $b = \langle b_3 \ b_2 \ b_1 \ b_0 \rangle$), depending on the operation that is requested using an *opcode*. The opcode is 4 bits, decomposed into the bits $op_0$, $op_1$, $op_2$, $op_3$. The operations to be supported are given in the following table. The logical operations are bitwise operations.

| $op_0$ | $op_1$ | $op_2$ | $op_3$ |                 Operation                |
| :---:  | :---:  | :---:  | :---:  | :--------------------------------------: |
|   0    |   0    |   0    |   0    |             $a+b$ (unsigned sum)         |
|   0    |   0    |   0    |   1    | Shift a sinistra di una posizione di $a$ |
|   0    |   0    |   1    |   0    |               $a$ and $b$                |
|   0    |   1    |   0    |   0    |                $a$ or $b$                |
|   0    |   1    |   1    |   0    |               $a \oplus b$               |
|   1    |   0    |   0    |   0    |               $a \odot b$                |
|   1    |   0    |   1    |   0    |                 $a \vert b$              |
|   1    |   1    |   0    |   0    |             $a \downarrow b$             |
|   1    |   1    |   1    |   0    |              $\overline{a}$              |

In the case of the shift operation, the input value of $b$ is a *don't care condition*. In the case of $\overline{a}$, $b$ can be assumed forced to zero. The circuit returns in $cout$ the carry resulting from the sum of $a$ and $b$ and the most significant bit extracted by the left shift operation.

## How to make the circuit

The circuit solution must be inserted into the file `circuit.dig`, which can be modified using the circuit editor and simulator [Digital](https://github.com/hneemann/Digital). The simulator also allows you to test the circuit locally, so you can also check the correctness of the proposed solution locally. If the solution is proposed in a file with *a different name*, the score obtained will be zero.

The `circuit.dig` file already specifies the inputs and outputs of the circuit. Do not rename or delete these terminals, otherwise the submitted homework will not be graded.

> [!WARNING]
> Solutions that use adders or shifters to support these operations will not be considered valid. In general, all solutions that are not iterative will be evaluated as zero points (regardless of the solver result).

> [!TIP]
> It is recommended to approach the problem in stages. Each required operation can be solved with a dedicated sub-circuit. Recognizing recurrences in circuits can help in minimization. Using ROM or PLA can help a lot in identifying a minimal solution.
