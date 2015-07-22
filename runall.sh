#!/bin/sh
#run the network planner for varying demand cases
python utilities/run_scenario.py mvMax5 input_demand/demand_50.json modKruskal network_params.json output_varyingdemand/mv5_run_50 test_data/sample_demand_nodes.csv -t "section_option"
python utilities/run_scenario.py mvMax5 input_demand/demand_60.json modKruskal network_params.json output_varyingdemand/mv5_run_60 test_data/sample_demand_nodes.csv -t "section_option"
python utilities/run_scenario.py mvMax5 input_demand/demand_70.json modKruskal network_params.json output_varyingdemand/mv5_run_70 test_data/sample_demand_nodes.csv -t "section_option"
python utilities/run_scenario.py mvMax5 input_demand/demand_80.json modKruskal network_params.json output_varyingdemand/mv5_run_80 test_data/sample_demand_nodes.csv -t "section_option"
python utilities/run_scenario.py mvMax5 input_demand/demand_90.json modKruskal network_params.json output_varyingdemand/mv5_run_90 test_data/sample_demand_nodes.csv -t "section_option"
python utilities/run_scenario.py mvMax5 input_demand/demand_100.json modKruskal network_params.json output_varyingdemand/mv5_run_100 test_data/sample_demand_nodes.csv -t "section_option"
python utilities/run_scenario.py mvMax5 input_demand/demand_200.json modKruskal network_params.json output_varyingdemand/mv5_run_200 test_data/sample_demand_nodes.csv -t "section_option"
python utilities/run_scenario.py mvMax5 input_demand/demand_300.json modKruskal network_params.json output_varyingdemand/mv5_run_300 test_data/sample_demand_nodes.csv -t "section_option"
python utilities/run_scenario.py mvMax5 input_demand/demand_400.json modKruskal network_params.json output_varyingdemand/mv5_run_400 test_data/sample_demand_nodes.csv -t "section_option"
python utilities/run_scenario.py mvMax5 input_demand/demand_500.json modKruskal network_params.json output_varyingdemand/mv5_run_500 test_data/sample_demand_nodes.csv -t "section_option"
python utilities/run_scenario.py mvMax5 input_demand/demand_600.json modKruskal network_params.json output_varyingdemand/mv5_run_600 test_data/sample_demand_nodes.csv -t "section_option"
python utilities/run_scenario.py mvMax5 input_demand/demand_700.json modKruskal network_params.json output_varyingdemand/mv5_run_700 test_data/sample_demand_nodes.csv -t "section_option"
python utilities/run_scenario.py mvMax5 input_demand/demand_800.json modKruskal network_params.json output_varyingdemand/mv5_run_800 test_data/sample_demand_nodes.csv -t "section_option"
python utilities/run_scenario.py mvMax5 input_demand/demand_900.json modKruskal network_params.json output_varyingdemand/mv5_run_900 test_data/sample_demand_nodes.csv -t "section_option"
python utilities/run_scenario.py mvMax5 input_demand/demand_1000.json modKruskal network_params.json output_varyingdemand/mv5_run_1000 test_data/sample_demand_nodes.csv -t "section_option"
python utilities/run_scenario.py mvMax5 input_demand/demand_2000.json modKruskal network_params.json output_varyingdemand/mv5_run_2000 test_data/sample_demand_nodes.csv -t "section_option"
python utilities/run_scenario.py mvMax5 input_demand/demand_3000.json modKruskal network_params.json output_varyingdemand/mv5_run_3000 test_data/sample_demand_nodes.csv -t "section_option"
python utilities/run_scenario.py mvMax5 input_demand/demand_4000.json modKruskal network_params.json output_varyingdemand/mv5_run_4000 test_data/sample_demand_nodes.csv -t "section_option"


#convert the shapefile outputs generated to csv
python convertShpToCsv.py output_varyingdemand/mv5_run_50/networks-proposed convertedcsv/mv5_run_50
python convertShpToCsv.py output_varyingdemand/mv5_run_60/networks-proposed convertedcsv/mv5_run_60
python convertShpToCsv.py output_varyingdemand/mv5_run_70/networks-proposed convertedcsv/mv5_run_70
python convertShpToCsv.py output_varyingdemand/mv5_run_80/networks-proposed convertedcsv/mv5_run_80
python convertShpToCsv.py output_varyingdemand/mv5_run_90/networks-proposed convertedcsv/mv5_run_90
python convertShpToCsv.py output_varyingdemand/mv5_run_100/networks-proposed convertedcsv/mv5_run_100
python convertShpToCsv.py output_varyingdemand/mv5_run_200/networks-proposed convertedcsv/mv5_run_200
python convertShpToCsv.py output_varyingdemand/mv5_run_300/networks-proposed convertedcsv/mv5_run_300
python convertShpToCsv.py output_varyingdemand/mv5_run_400/networks-proposed convertedcsv/mv5_run_400
python convertShpToCsv.py output_varyingdemand/mv5_run_500/networks-proposed convertedcsv/mv5_run_500
python convertShpToCsv.py output_varyingdemand/mv5_run_600/networks-proposed convertedcsv/mv5_run_600
python convertShpToCsv.py output_varyingdemand/mv5_run_700/networks-proposed convertedcsv/mv5_run_700
python convertShpToCsv.py output_varyingdemand/mv5_run_800/networks-proposed convertedcsv/mv5_run_800
python convertShpToCsv.py output_varyingdemand/mv5_run_900/networks-proposed convertedcsv/mv5_run_900
python convertShpToCsv.py output_varyingdemand/mv5_run_1000/networks-proposed convertedcsv/mv5_run_1000
python convertShpToCsv.py output_varyingdemand/mv5_run_2000/networks-proposed convertedcsv/mv5_run_2000
python convertShpToCsv.py output_varyingdemand/mv5_run_3000/networks-proposed convertedcsv/mv5_run_3000
python convertShpToCsv.py output_varyingdemand/mv5_run_4000/networks-proposed convertedcsv/mv5_run_4000


python compare.py convertedcsv/mv5_run_50 convertedcsv/mv5_run_60 
python compare.py convertedcsv/mv5_run_60 convertedcsv/mv5_run_70 
python compare.py convertedcsv/mv5_run_70 convertedcsv/mv5_run_80 
python compare.py convertedcsv/mv5_run_80 convertedcsv/mv5_run_90 
python compare.py convertedcsv/mv5_run_90 convertedcsv/mv5_run_100 
python compare.py convertedcsv/mv5_run_100 convertedcsv/mv5_run_200 
python compare.py convertedcsv/mv5_run_200 convertedcsv/mv5_run_300 
python compare.py convertedcsv/mv5_run_300 convertedcsv/mv5_run_400 
python compare.py convertedcsv/mv5_run_400 convertedcsv/mv5_run_500 
python compare.py convertedcsv/mv5_run_500 convertedcsv/mv5_run_600 
python compare.py convertedcsv/mv5_run_600 convertedcsv/mv5_run_700 
python compare.py convertedcsv/mv5_run_700 convertedcsv/mv5_run_800 
python compare.py convertedcsv/mv5_run_800 convertedcsv/mv5_run_900 
python compare.py convertedcsv/mv5_run_900 convertedcsv/mv5_run_1000 
python compare.py convertedcsv/mv5_run_1000 convertedcsv/mv5_run_2000 
python compare.py convertedcsv/mv5_run_2000 convertedcsv/mv5_run_3000 
python compare.py convertedcsv/mv5_run_3000 convertedcsv/mv5_run_4000 


python householdscalculate.py 
