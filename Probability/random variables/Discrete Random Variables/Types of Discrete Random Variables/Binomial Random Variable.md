Binomial [[Random Variables]] are [[Discrete Random Variables]] that describe the total number of successes in multiple independent [[Bernoulli Random Variable]]s. For example, if a Bernoulli random variable modeled the probability of heads in a coin flip, then a binomial random variable can describe flipping a coin 10 times (10 independent Bernoulli RVs) and counts how many times you get heads.

A binomial R.V.'s [[Probability Mass Function]] is:

$$
p(i) = \binom{n}{i} p^i (1-p)^{n - i} \quad i=0,1,...n
$$

Where $i$ is the number of successes, and $n$ is the number of trials. We can read this as the probability of a certain sequence of events happening ($p^i(1-p)^{n-i}$, or total successes multiplied by total failures) by how many combinations can be made out of $n$ trials with $i$ successes.

A binomial R.V.'s [[Expected Value or Expectation]] and [[Variance]] is:

$$
\begin{equation}
	\begin{aligned}
		E[X] & = np \\
		Var[X] & = np(1-p) \\
	\end{aligned}
\end{equation}
$$