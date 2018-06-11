"""
An n × n almost-banded matrix is defined by

A = B + S,

where B is an n × n banded matrix and S is semi-separable matrix given by

S = triu(uvᵀ, bu+1) + tril(pqᵀ, -bl-1).

Here, bu, bl ⩾ 0. u and v are n × ru matrices and p and q are n × rl matrices.
See [1] for the definition.

[1] Chandrasekaran and Gu, Fast and stable algorithms for banded plus
Semiseparable systems of linear equations, SIMAX, 25 (2003), pp. 373-384.
"""

struct AlmostBandedMatrix{T} <: AbstractMatrix{T}
    B::BandedMatrix{T}
    S::SemiSeparableMatrix{T}

    function AlmostBandedMatrix(B::BandedMatrix{T}, S::SemiSeparableMatrix{T}) where T
        @assert size(B) == size(S)
        new{T}(B, S)
    end
end
