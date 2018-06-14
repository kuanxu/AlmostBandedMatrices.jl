# A semi-separable matrix is defined by
#
# S = triu(uvᵀ, bu+1) + tril(pqᵀ, -bl-1),
#
# where bu, bl >= 0. u and v are n × ru matrices and p and q are n × rl matrices.
# See [1] for the definition.

# [1] Chandrasekaran and Gu, Fast and stable algorithms for banded plus
# Semiseparable systems of linear equations, SIMAX, 25 (2003), pp. 373-384.

## Constructors

struct SemiSeparableMatrix{T} <: AbstractMatrix{T}
    U::LowRankMatrix{T}
    L::LowRankMatrix{T}
    bu::Int
    bl::Int

    function SemiSeparableMatrix(U::LowRankMatrix{T}, L::LowRankMatrix{T}, bu, bl) where T
        Um, Un = size(U)
        Lm, Ln = size(L)
        @assert Um == Un == Lm == Ln && Un >= bu+1 && Lm >= bl+1
        new{T}(U, L, bu, bl)
    end
end

function Base.convert(::Type{Matrix}, S::SemiSeparableMatrix)
    return triu(Matrix(S.U), S.bu+1) + tril(Matrix(S.L), -S.bl-1)
end

size(S::SemiSeparableMatrix) = size(S.L)

## getindex
