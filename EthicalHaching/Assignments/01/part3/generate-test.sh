#!/bin/bash



# Pre
# iteration
# theHarvester -d $(cat ../target) -b {sources} -f ./results/{sources_count}.json



get-n-sources(){
	number=$1

	cat ./sources| head -n 3 | paste -sd"," | tr -d " " | xargs
	
}





# BECAUSE 


