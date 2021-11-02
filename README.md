# Numerical Analysis and Computational Analysis
Numerical Analysis and Computational Analysis with MATLAB, Python and CUDA C

## Examples


```
<Chemical Reactions>
k = Ae^-E/(RTa)

<Fourier Series Approximation>
cos x = 1
cos x = 1 - x^2/2!
cos x = 1 - x^2/2! + x^4/4!
        .
        .
        .
Then, calculate error (approximation - true value)

```

<p align="center">
  <img src="examples/chemical_reactions_with_Arrhenius_equation.png" width=48%>
  <img src="examples/fourier_series_approximation.png" width=48%>
</p>

## Roots of Equations
```matlab
% 1. Bisection Method
if func(x_l) * func(x_u) < 0
        x_u = x_r;
else
        x_l = x_r;
end
        
% 2. False-Position Method
x_r = x_u - func(x_u) * (x_l - x_u)/(func(x_l) - func(x_u));

if func(x_l) * func(x_u) < 0
        x_u = x_r;
else
        x_l = x_r;
end

% 3. Fixed Point Iteration
x_new = funcG(x_old);
x_old = x_new;


% 4. Secant Method
x_i3 = x_i2 - func(x_i2) * (x_i2 - x_i1) / (func(x_i2) - func(x_i1))

% 5. Modifed Secant Methods | e.g. delta = 10^-6
x_i3 = x_i2 - func(x_i2) * delta * x_i2 / (func(x_i2 * (1 + delta)) - func(x_i2))
```

<p align="center">
  [Bisection (Bracketing Methods)] <br>
  <img src="roots of equations/bisection_method.png" width=48%>
  <img src="roots of equations/bisection_method_error.png" width=48%>
</p>

<p align="center">
  [False Position Approach (Bracketing Methods)] <br>
  <img src="roots of equations/false_position_method.png" width=48%>
  <img src="roots of equations/false_position_method_error.png" width=48%>
</p>

<p align="center">
  [Fixed-Point Iteration (Open Methods)] <br>
  <img src="roots of equations/fixed_point_iteration.png" width=48%>
  <img src="roots of equations/fixed_point_iteration_error.png" width=48%>
</p>

<p align="center">
  [Secant Method / Modified Secant Method (Open Methods)] <br>
  <img src="roots of equations/secant_method.png" width=48%>
  <img src="roots of equations/modified_secant_method.png" width=48%>
</p>

## Gauss Elimination

Linear Equation File Usage

```
Ax = b

1*x1  + 0*x2 + 2*x3 + 3*x4 =  1
-1*x1 + 2*x2 + 2*x3 - 3*x4 = -1
0*x1  + 1*x2 + 1*x3 + 4*x4 =  2
6*x1  + 2*x2 + 2*x3 + 4*x4 =  1


-> file_format(.txt) ->


1  0 2  3
-1 2 2 -3
0  1 1  4
6  2 2  4
1 -1 2  1
```
