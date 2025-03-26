Random variables are an object that assigns value to random processes. For example, say we flip a coin 3 times. If we let $Y$ be the number of heads that appear, Y can take on the values 0, 1, 2, or 3 heads. We can write this as:
$$P\{Y = 0\} = \{(t,t,t)\} = \frac{1}{8}$$
$$P\{Y = 1\} = \{(h,t,t),(t,h,t),(t,t,h)\} = \frac{1}{2} \cdot \frac{1}{4} + \frac{1}{2} \cdot \frac{1}{2} \cdot \frac{1}{2} + \frac {1}{4} \cdot \frac{1}{2}  = \frac{3}{8} $$
$$P\{Y = 2\} = \{(t,h,h),(h,t,h),(h,h,t)\} = \frac{1}{8}$$
$$P\{Y = 3\} = \{(h,h,h)\} = \frac{1}{8}$$
We can also write it as:

$$
Y =

\begin{cases} 
0 & \text{0 heads, 3 tails} \\
1 & \text{2 tails, 1 head} \\
2 & \text{2 heads, 1 tail} \\
3 & \text{3 heads, 0 tails} \\
\end{cases}

$$
