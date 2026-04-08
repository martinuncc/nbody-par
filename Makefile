CXXFLAGS=-O3 -fopenmp

nbodyp: nbodyp.cpp
	g++ -O3 -fopenmp nbodyp.cpp -o nbodyp

solar.out: nbodyp
	date
	./nbodyp planet 200 5000000 10000 > solar.out # maybe a minutes
	date

solar.pdf: solar.out
	python3 plot.py solar.out solar.pdf 1000 

random.out: nbodyp
	date
	./nbodyp 1000 1 10000 100 > random.out # maybe 5 minutes
	date
