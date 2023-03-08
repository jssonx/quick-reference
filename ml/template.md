# Template
$$\frac{\partial}{\partial \mu} \log p(x_1, x_2, \cdots, x_n)=0$$

$$\sigma^2_{ML} =\frac{1}{n} \sum_{i=1}^n (x_i-\mu_{ML})^2$$

$$E(\mu_{ML}) = E\left(\frac{1}{n}\sum_{i=1}^n x_i\right) = \frac{1}{n} \sum_{i=1}^n E(x_i) = \frac{1}{n} n\mu = \mu$$

$$Var(\mu_{ML}) = Var\left(\frac{1}{n}\sum_{i=1}^n x_i\right) = \frac{1}{n^2} \sum_{i=1}^n Var(x_i) = \frac{1}{n^2} n\sigma^2 = \frac{\sigma^2}{n}$$

$$\hat{\mu}$$

$$\hat{\mu}^*$$

$$\hat{\mu}^* = argmin \left(\sum_{i=1}^n (x_i-\mu)^2 + λ \mu^2 \right) $$

$$Var(\hat{\mu}^*) = Var\left(\frac{\sum_{i=1}^n x_i}{n + \lambda}\right) = \frac{Var(\sum_{i=1}^n x_i)}{(n + \lambda)^2} = \frac{n\sigma^2}{(n + \lambda)^2}$$

$$\frac{n\sigma^2}{(n + \lambda)^2}$$

$$\frac{\sigma^2}{n}$$

$$\frac{n\sigma^2}{(n + \lambda)^2} = \frac{\sigma^2}{\frac{(n + \lambda)^2}{n}} = \frac{\sigma^2}{\frac{n^2}{n} + 2\lambda\frac{n}{n} + \lambda^2\frac{n}{n}} = \frac{\sigma^2}{n + 2\lambda + \frac{\lambda^2}{n}}$$