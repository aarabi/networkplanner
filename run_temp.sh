#!/bin/sh
#run the network planner for varying demand cases
python utilities/run_scenario.py mvMax5 input_demand/demand_50.json modKruskal network_params.json output_varyingdemand/mv5_run_50 test_data/sample_demand_nodes.csv -t "section_option"
python mergeshp.py 1
python createzip.py output_varyingdemand/mv5_run_50 /merged
python deleteExistingGrid.py output_varyingdemand/mv5_run_50/metrics-local
python utilities/run_scenario.py mvMax5 input_demand/demand_60.json modKruskal input_demand/network_params_60.json output_varyingdemand/mv5_run_60 test_data/sample_demand_nodes.csv -t "section_option"
python mergeshp.py 2
python createzip.py output_varyingdemand/mv5_run_60 /merged
python deleteExistingGrid.py output_varyingdemand/mv5_run_60/metrics-local
python utilities/run_scenario.py mvMax5 input_demand/demand_70.json modKruskal input_demand/network_params_70.json output_varyingdemand/mv5_run_70 test_data/sample_demand_nodes.csv -t "section_option"
python mergeshp.py 3
python createzip.py output_varyingdemand/mv5_run_70 /merged
python deleteExistingGrid.py output_varyingdemand/mv5_run_70/metrics-local
python utilities/run_scenario.py mvMax5 input_demand/demand_80.json modKruskal input_demand/network_params_80.json output_varyingdemand/mv5_run_80 test_data/sample_demand_nodes.csv -t "section_option"
python mergeshp.py 4
python createzip.py output_varyingdemand/mv5_run_80 /merged
python deleteExistingGrid.py output_varyingdemand/mv5_run_80/metrics-local
python utilities/run_scenario.py mvMax5 input_demand/demand_90.json modKruskal input_demand/network_params_90.json output_varyingdemand/mv5_run_90 test_data/sample_demand_nodes.csv -t "section_option"
python mergeshp.py 5
#convert the shapefile outputs generated to csv
python convertShpToCsv.py output_varyingdemand/mv5_run_50/networks-proposed convertedcsv/mv5_run_50
python convertShpToCsv.py output_varyingdemand/mv5_run_60/networks-proposed convertedcsv/mv5_run_60
python convertShpToCsv.py output_varyingdemand/mv5_run_70/networks-proposed convertedcsv/mv5_run_70
python convertShpToCsv.py output_varyingdemand/mv5_run_80/networks-proposed convertedcsv/mv5_run_80
python convertShpToCsv.py output_varyingdemand/mv5_run_90/networks-proposed convertedcsv/mv5_run_90


python compare.py convertedcsv/mv5_run_50 convertedcsv/mv5_run_60 output_varyingdemand/mv5_run_50/metrics-local
python compare.py convertedcsv/mv5_run_60 convertedcsv/mv5_run_70 output_varyingdemand/mv5_run_60/metrics-local
python compare.py convertedcsv/mv5_run_70 convertedcsv/mv5_run_80 output_varyingdemand/mv5_run_70/metrics-local
python compare.py convertedcsv/mv5_run_80 convertedcsv/mv5_run_90 output_varyingdemand/mv5_run_80/metrics-local
python compare.py convertedcsv/mv5_run_90 convertedcsv/mv5_run_100 output_varyingdemand/mv5_run_90/metrics-local


#python householdscalculate.py
#python normalizelenght.py
