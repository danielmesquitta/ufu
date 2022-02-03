num_permutacoes(M, N) :- aggregate_all(count, permutation(M, _), N).
