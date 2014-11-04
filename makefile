all:    
	chmod a+rwx `pwd`
	sed 's/\t/, /g' < p2data/data/cit-HepPh.txt > newData
	python gm_main.py --file `pwd`/samplegraph.txt --dest_dir `pwd`/output --belief_file `pwd`/priorsbelief.txt --unweighted --undirected 

install:
	sudo apt-get install python-psycopg2

all.tar:
	tar -zcvf graphminer.tar.gz *.txt makefile *.py matlab output doc

clean:
	rm *.pyc


