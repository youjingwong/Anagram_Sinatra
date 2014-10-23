word = "test"

hello =  word.split("").permutation.map &:join
p hello	