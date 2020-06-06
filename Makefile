.PHONY: all

all: lucflx lucflx-opt

lucflx: lu_distr_pivot.cpp
	CC -std=c++17 -O3 lu_distr_pivot.cpp -o lucflx

lucflx-opt: lu_distr_pivot_opt.cpp
	CC -fopenmp -std=c++17 -O3 lu_distr_pivot_opt.cpp -o lucflx-opt

clean:
	rm -rf *~ lucflx lucflx-opt