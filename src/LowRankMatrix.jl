"""
Store the singular value decomposition of a matrix:

    A = UΣV'

"""
struct LowRankMatrix{T} <: AbstractMatrix{T}
    U::Matrix{T}
    Σ::Matrix{T}
    V::Matrix{T}
end

size(L::LowRankMatrix) = size(L.U, 1), size(L.V, 1)
rank(L::LowRankMatrix) = size(L.Σ,1)
norm(L::LowRankMatrix) = first(L.Σ)
cond(L::LowRankMatrix) = ifelse(rank(L) < minimum(size(L)), Inf, first(L.Σ)/last(L.Σ))

istriu(L::LowRankMatrix) = false
istril(L::LowRankMatrix) = false
issymmetric(L::LowRankMatrix) = false
ishermitian(L::LowRankMatrix) = false

function getindex(L::LowRankMatrix{T},i::Integer,j::Integer) where T
    ret = zero(T)
    U, Σ, V, r = L.U, L.Σ, L.V, rank(L)
    # for k = r:-1:1
    #     ret += U[i,k]*Σ[k,k]*V[j,k]
    # end
    U[i,:]'*Σ*V[j,:]

    # ret
end
