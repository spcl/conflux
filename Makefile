.PHONY: all

all: lucflx

lucflx: lu_distr_pivot.cpp
	scorep-CC -std=c++17 -O3 lu_distr_pivot.cpp -o lucflx

clean:
	rm -rf *~ lucflx
