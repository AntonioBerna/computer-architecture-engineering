# :recycle: String Recognizer

For this homework, you need to design a sequential network that can accept character sequences of the format $ba (dc) \ast bac$, where the notation $\ast$ indicates that there can be $n$ repetitions of the subsequence $dc$ with $n \in [0, \infty)$. The input character sequence is infinite.

The input alphabet consists of the characters $I = \{ a, b, c, d \}$ represented with the following encodings:

- $a = \langle x_1 = 0, x_0 = 0\rangle$.
- $b = \langle x_1 = 0, x_0 = 1 \rangle$.
- $c = \langle x_1 = 1, x_0 = 1 \rangle$.
- $d = \langle x_1 = 1, x_0 = 0 \rangle$.

The output alphabet consists of the characters $O = \{ no, yes \}$ represented with the following encodings:

- $no = \langle z = 1 \rangle$;
- $yes = \langle z = 0 \rangle$.

The network will have to be built as a <ins>Mealy machine</ins>.

## How to make the circuit

The circuit solution must be inserted into the file `circuit.dig`, which can be modified using the circuit editor and simulator [Digital](https://github.com/hneemann/Digital). The simulator also allows you to test the circuit locally, so you can also check the correctness of the proposed solution locally. If the solution is proposed in a file with *a different name*, the score obtained will be zero.

The `circuit.dig` file already specifies the inputs and outputs of the circuit, including the *clock source*. Do not rename or delete these terminals, otherwise the submitted homework will not be graded.
