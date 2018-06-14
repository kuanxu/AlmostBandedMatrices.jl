using AlmostBandedMatrices



n = 10
r = 2
V = randn(n,r)
A = A_old = SemiSeparableMatrix(LowRankMatrix(randn(n,r), randn(r,r), V),
                    LowRankMatrix(randn(n,r), randn(r,r), V),0,0)

A = deepcopy(A_old)
      A₁ = A - (A[:,1]*A[1,:]')/A[1,1]





A = deepcopy(A_old)
      v = A[:,1];
      v ./= v[1]
      v .*= 1
      v[1] = 0
      L = I - v*[1 zeros(1,n-1)]
      L*A





















A = deepcopy(A_old)
      # A.L.Σ .= A.L.Σ*(I - A.L.V[1,:]*(A.U.Σ'*A.U.U[1,:])'/A[1,1])
      A.L.Σ .= A.L.Σ*(I - A.L.V[1,:]*A.U.U[1,:]'*A.U.Σ/A[1,1])
      A
A = deepcopy(A_old)
A.L.Σ*(I - A.L.V[1,:]*(A.U.Σ*A.U.U[1,:])'/A[1,1])

A.L.V[1,:]*A.U.U[1,:]'
A.L.V[1,:]
A.U.U[1,:]
A[2,1]


A.L[2,1]



A[2,1]

A.L[2,1]



A.L.U*A.L.Σ*A.L.V[1,:]

A - (A.L.U*A.L.Σ*A.L.V[1,:]*A[1,:]')/A[1,1]    - A₁
A - (A.L.U*A.L.Σ*A.L.V[1,:]*(A.U.U[1:1,:]*A.U.Σ*A.U.V'))/A[1,1] - A₁
(A.L.U*A.L.Σ*A.L.V') - (A.L.U*A.L.Σ*A.L.V[1,:]*(A.U.V*A.U.Σ'*A.U.U[1,:])')/A[1,1] - A₁
A.L.U*A.L.Σ*(I - A.L.V[1,:]*(A.U.Σ'*A.U.U[1,:])'/A[1,1])*A.U.V'- A₁
A.L.V[1,:]
(A.L.V')

(I - A.L.V[1,:]*(A.U.Σ*A.U.U[1,:])'/A[1,1])

(I - A.L.V[1,:]*(A.U.Σ*A.U.U[1,:])'/A[1,1])

A.L.V[1,:]

(A.U.U[1:1,:]*A.U.Σ*A.U.V')
(A.U.V*A.U.Σ*A.U.U[1,:])
(A.U.U[1:1,:]*A.U.Σ*A.U.V')





A[1,:]
A.L.U

A.L.U*A.L.Σ*A.L.V[1,:]

A = deepcopy(A_old)
      v = A[:,1];
      v ./= v[1]
      v .*= 1
      v[1] = 0
      v
      A.L.V[1,:] ./= A[1,1]
       # A.L.V[2:n,:] .-= (A.U.U[1:1,:] * A.U.Σ * A.U.V[2:n,:]') .* A.L.V[1,1]
       A.L.V[2:n,1] .-= A.U.U[1,1] * A.U.Σ[1] * A.L.V[2:n,1].* A.L.V[1,1]
       A.L.V[2:n,2] .-= A.U.U[1,2] * A.U.Σ[2] * A.L.V[2:n,2].* A.L.V[1,1]
      # A.L.V[2:n,1] .-= A.U.U[1,1] * A.U.Σ[1] * A.L.V[2:n,1].* A.L.V[1,1]
      # A.L.Σ[1] .*= (1 - A.U.U[1,1] * A.U.Σ[1] * A.L.V[1,1])
      A



A = randn(n,n)
      v = A[:,1];
      v ./= v[1]
      v .*= 1
      v[1] = 0
      L = I - v*[1 zeros(1,n-1)]
      L*A


A - (A[:,1]*A[1,:]')/A[1,1]



A - (A[:,1]*[A[1,1] zeros(1,n-1)])/A[1,1]


(A.U.U[1:1,:] * A.U.Σ * A.U.V[2:n,:]')

A.L.V[2:n,:]
A.L.V[1,1]

(A.U.U[1:1,:] * A.U.Σ * A.U.V[2:n,:]')

(A.U.U[1,:]' * A.U.Σ * A.U.V[2:n,:]')
A.U.U[1,:]

A.U.U[1,:]' * A.U.Σ * A.V


L = I - v*[1 zeros(1,n-1)]
      L*A_old







A


A = deepcopy(A_old)
  v = A[:,1];
  v ./= v[1]
  v .*= 1
  v[1] = 0
  A11 = A[1,1]
  A.L.Σ .-= A.U.Σ
  A.L.V[1,1] ./= A[1,1]



  A.L.V


L = I - v*[1 zeros(1,n-1)]
  A - L*A_old



A.U.V






A.L.V[2:n,:] .-= A.U.U[1,1] .* A.L.V[1,1] .* A.U.V[2:n,:]


A = deepcopy(A_old)
   v = A[:,1];
   v ./= v[1]
   v .*= 1
   v[1] = 0
   v
   A.L.V[1,:] ./= A[1,1]
   for j = 2:n
      A.L.V[j,:] .-= A[1,j]*A.L.V[1,:]
   end
   L = I - v*[1 zeros(1,n-1)]
   A - L*A_old


A = deepcopy(A_old)
      v = A[:,1];
      v ./= v[1]
      v .*= 1
      v[1] = 0
      v
      A.L.V[1,:] ./= A[1,1]
      # A.L.V[2:n,:] .-= A.U.U[1,1] * A.U.Σ[1] * A.U.V[2:n,1].* A.L.V[1,1]
      # A.L.V[2:n,1] .-= A.U.U[1,1] * A.U.Σ[1] * A.L.V[2:n,1].* A.L.V[1,1]
      A.L.Σ[1] .*= (1 - A.U.U[1,1] * A.U.Σ[1] * A.L.V[1,1])
      L = I - v*[1 zeros(1,n-1)]
      A - L*A_old


L*A_old

A

A.U.U[1,1] * A.U.Σ[1] .* A.L.V[1,1]

A.L.Σ[1]

A.L.V





A[1,2:n]

A = deepcopy(A_old)
   v = A[:,1];
   v ./= v[1]
   v .*= 1
   v[1] = 0
   v
   A.L.V[1,:] ./= A[1,1]
   A.L.V[2:n,:] .-= A.U.U[1,1] .* A.L.V[1,1] .* A.U.V[2:n,:]
   A
   L = I - v*[1 zeros(1,n-1)]
   A - L*A_old


A.L.V[2:n,:]

A.U.V[:,1]

A.U.U[1,:] .* A.L.V[1,:]
A.L.V[1,:]
A.U.U







v

v













A




j = 1


n = 100;
   u = randn(n); v = randn(n);
   w = randn(n); z = randn(n);

   A = triu(u*v') + tril(w*z')
   v = A[:,1];
   v ./= v[1]
   v[1] = 0
   L = (I - v*[1 zeros(1,length(v)-1)])
