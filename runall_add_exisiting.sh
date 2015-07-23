#!/bin/sh
#run the network planner for varying demand cases
python utilities/run_scenario.py mvMax5 input_demand/demand_50.json modKruskal network_params.json output_varyingdemand/mv5_run_50 test_data/sample_demand_nodes.csv -t "section_option"
python createzip.py output_varyingdemand/mv5_run_50 /mv5_run_50
python deleteExistingGrid.py output_varyingdemand/mv5_run_50/metrics-local
python utilities/run_scenario.py mvMax5 input_demand/demand_60.json modKruskal input_demand/network_params_60.json output_varyingdemand/mv5_run_60 test_data/sample_demand_nodes.csv -t "section_option"
python createzip.py output_varyingdemand/mv5_run_60 /mv5_run_60
python deleteExistingGrid.py output_varyingdemand/mv5_run_60/metrics-local
python utilities/run_scenario.py mvMax5 input_demand/demand_70.json modKruskal input_demand/network_params_70.json output_varyingdemand/mv5_run_70 test_data/sample_demand_nodes.csv -t "section_option"
python createzip.py output_varyingdemand/mv5_run_70 /mv5_run_70
python deleteExistingGrid.py output_varyingdemand/mv5_run_70/metrics-local
python utilities/run_scenario.py mvMax5 input_demand/demand_80.json modKruskal input_demand/network_params_80.json output_varyingdemand/mv5_run_80 test_data/sample_demand_nodes.csv -t "section_option"
python createzip.py output_varyingdemand/mv5_run_80 /mv5_run_80
python deleteExistingGrid.py output_varyingdemand/mv5_run_80/metrics-local
python utilities/run_scenario.py mvMax5 input_demand/demand_90.json modKruskal input_demand/network_params_90.json output_varyingdemand/mv5_run_90 test_data/sample_demand_nodes.csv -t "section_option"
python createzip.py output_varyingdemand/mv5_run_90 /mv5_run_90
python deleteExistingGrid.py output_varyingdemand/mv5_run_90/metrics-local
python utilities/run_scenario.py mvMax5 input_demand/demand_100.json modKruskal input_demand/network_params_100.json output_varyingdemand/mv5_run_100 test_data/sample_demand_nodes.csv -t "section_option"
python createzip.py output_varyingdemand/mv5_run_100 /mv5_run_100
python deleteExistingGrid.py output_varyingdemand/mv5_run_100/metrics-local
python utilities/run_scenario.py mvMax5 input_demand/demand_200.json modKruskal input_demand/network_params_200.json output_varyingdemand/mv5_run_200 test_data/sample_demand_nodes.csv -t "section_option"
python createzip.py output_varyingdemand/mv5_run_200 /mv5_run_200
python deleteExistingGrid.py output_varyingdemand/mv5_run_200/metrics-local
python utilities/run_scenario.py mvMax5 input_demand/demand_300.json modKruskal input_demand/network_params_300.json output_varyingdemand/mv5_run_300 test_data/sample_demand_nodes.csv -t "section_option"
python createzip.py output_varyingdemand/mv5_run_300 /mv5_run_300
python deleteExistingGrid.py output_varyingdemand/mv5_run_300/metrics-local
python utilities/run_scenario.py mvMax5 input_demand/demand_400.json modKruskal input_demand/network_params_400.json output_varyingdemand/mv5_run_400 test_data/sample_demand_nodes.csv -t "section_option"
python createzip.py output_varyingdemand/mv5_run_400 /mv5_run_400
python deleteExistingGrid.py output_varyingdemand/mv5_run_400/metrics-local
python utilities/run_scenario.py mvMax5 input_demand/demand_500.json modKruskal input_demand/network_params_500.json output_varyingdemand/mv5_run_500 test_data/sample_demand_nodes.csv -t "section_option"
python createzip.py output_varyingdemand/mv5_run_500 /mv5_run_500
python deleteExistingGrid.py output_varyingdemand/mv5_run_500/metrics-local
python utilities/run_scenario.py mvMax5 input_demand/demand_600.json modKruskal input_demand/network_params_600.json output_varyingdemand/mv5_run_600 test_data/sample_demand_nodes.csv -t "section_option"
python createzip.py output_varyingdemand/mv5_run_600 /mv5_run_600
python deleteExistingGrid.py output_varyingdemand/mv5_run_600/metrics-local
python utilities/run_scenario.py mvMax5 input_demand/demand_700.json modKruskal input_demand/network_params_700.json output_varyingdemand/mv5_run_700 test_data/sample_demand_nodes.csv -t "section_option"
python createzip.py output_varyingdemand/mv5_run_700 /mv5_run_700
python deleteExistingGrid.py output_varyingdemand/mv5_run_700/metrics-local
python utilities/run_scenario.py mvMax5 input_demand/demand_800.json modKruskal input_demand/network_params_800.json output_varyingdemand/mv5_run_800 test_data/sample_demand_nodes.csv -t "section_option"
python createzip.py output_varyingdemand/mv5_run_800 /mv5_run_800
python deleteExistingGrid.py output_varyingdemand/mv5_run_800/metrics-local
python utilities/run_scenario.py mvMax5 input_demand/demand_900.json modKruskal input_demand/network_params_900.json output_varyingdemand/mv5_run_900 test_data/sample_demand_nodes.csv -t "section_option"
python createzip.py output_varyingdemand/mv5_run_900 /mv5_run_900
python deleteExistingGrid.py output_varyingdemand/mv5_run_900/metrics-local
python utilities/run_scenario.py mvMax5 input_demand/demand_1000.json modKruskal input_demand/network_params_1000.json output_varyingdemand/mv5_run_1000 test_data/sample_demand_nodes.csv -t "section_option"
python createzip.py output_varyingdemand/mv5_run_1000 /mv5_run_1000
python deleteExistingGrid.py output_varyingdemand/mv5_run_1000/metrics-local
python utilities/run_scenario.py mvMax5 input_demand/demand_2000.json modKruskal input_demand/network_params_2000.json output_varyingdemand/mv5_run_2000 test_data/sample_demand_nodes.csv -t "section_option"
python createzip.py output_varyingdemand/mv5_run_2000 /mv5_run_2000
python deleteExistingGrid.py output_varyingdemand/mv5_run_2000/metrics-local
python utilities/run_scenario.py mvMax5 input_demand/demand_3000.json modKruskal input_demand/network_params_3000.json output_varyingdemand/mv5_run_3000 test_data/sample_demand_nodes.csv -t "section_option"
python createzip.py output_varyingdemand/mv5_run_3000 /mv5_run_3000
python deleteExistingGrid.py output_varyingdemand/mv5_run_3000/metrics-local
python utilities/run_scenario.py mvMax5 input_demand/demand_4000.json modKruskal input_demand/network_params_4000.json output_varyingdemand/mv5_run_4000 test_data/sample_demand_nodes.csv -t "section_option"
python deleteExistingGrid.py output_varyingdemand/mv5_run_3000/metrics-local

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


python compare.py convertedcsv/mv5_run_50 convertedcsv/mv5_run_60 output_varyingdemand/mv5_run_50/metrics-local
python compare.py convertedcsv/mv5_run_60 convertedcsv/mv5_run_70 output_varyingdemand/mv5_run_60/metrics-local
python compare.py convertedcsv/mv5_run_70 convertedcsv/mv5_run_80 output_varyingdemand/mv5_run_70/metrics-local
python compare.py convertedcsv/mv5_run_80 convertedcsv/mv5_run_90 output_varyingdemand/mv5_run_80/metrics-local
python compare.py convertedcsv/mv5_run_90 convertedcsv/mv5_run_100 output_varyingdemand/mv5_run_90/metrics-local
python compare.py convertedcsv/mv5_run_100 convertedcsv/mv5_run_200 output_varyingdemand/mv5_run_100/metrics-local
python compare.py convertedcsv/mv5_run_200 convertedcsv/mv5_run_300 output_varyingdemand/mv5_run_200/metrics-local
python compare.py convertedcsv/mv5_run_300 convertedcsv/mv5_run_400 output_varyingdemand/mv5_run_300/metrics-local
python compare.py convertedcsv/mv5_run_400 convertedcsv/mv5_run_500 output_varyingdemand/mv5_run_400/metrics-local
python compare.py convertedcsv/mv5_run_500 convertedcsv/mv5_run_600 output_varyingdemand/mv5_run_500/metrics-local
python compare.py convertedcsv/mv5_run_600 convertedcsv/mv5_run_700 output_varyingdemand/mv5_run_600/metrics-local
python compare.py convertedcsv/mv5_run_700 convertedcsv/mv5_run_800 output_varyingdemand/mv5_run_700/metrics-local
python compare.py convertedcsv/mv5_run_800 convertedcsv/mv5_run_900 output_varyingdemand/mv5_run_800/metrics-local
python compare.py convertedcsv/mv5_run_900 convertedcsv/mv5_run_1000 output_varyingdemand/mv5_run_900/metrics-local
python compare.py convertedcsv/mv5_run_1000 convertedcsv/mv5_run_2000 output_varyingdemand/mv5_run_1000/metrics-local
python compare.py convertedcsv/mv5_run_2000 convertedcsv/mv5_run_3000 output_varyingdemand/mv5_run_2000/metrics-local
python compare.py convertedcsv/mv5_run_3000 convertedcsv/mv5_run_4000 output_varyingdemand/mv5_run_3000/metrics-local


python householdscalculate.py
python normalizelenght.py
