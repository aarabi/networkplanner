#!/bin/sh
#run the network planner for varying demand cases
python utilities/run_scenario.py mvMax5 input_demand/demand_50.json modKruskal input_demand/network_params_50.json output_varyingdemand/mv5_run_50 test_data/sample_demand_nodes.csv -t "section_option"
python mergeshp.py 1
python createzip.py output_varyingdemand/mv5_run_50/merged /merged
python deleteExistingGrid.py output_varyingdemand/mv5_run_50/metrics-local
python utilities/run_scenario.py mvMax5 input_demand/demand_60.json modKruskal input_demand/network_params_60.json output_varyingdemand/mv5_run_60 test_data/sample_demand_nodes.csv -t "section_option"
python mergeshp.py 2
python createzip.py output_varyingdemand/mv5_run_60/merged /merged
python deleteExistingGrid.py output_varyingdemand/mv5_run_60/metrics-local
python utilities/run_scenario.py mvMax5 input_demand/demand_70.json modKruskal input_demand/network_params_70.json output_varyingdemand/mv5_run_70 test_data/sample_demand_nodes.csv -t "section_option"
python mergeshp.py 3
python createzip.py output_varyingdemand/mv5_run_70/merged /merged
python deleteExistingGrid.py output_varyingdemand/mv5_run_70/metrics-local
python utilities/run_scenario.py mvMax5 input_demand/demand_80.json modKruskal input_demand/network_params_80.json output_varyingdemand/mv5_run_80 test_data/sample_demand_nodes.csv -t "section_option"
python mergeshp.py 4
python createzip.py output_varyingdemand/mv5_run_80/merged /merged
python deleteExistingGrid.py output_varyingdemand/mv5_run_80/metrics-local
python utilities/run_scenario.py mvMax5 input_demand/demand_90.json modKruskal input_demand/network_params_90.json output_varyingdemand/mv5_run_90 test_data/sample_demand_nodes.csv -t "section_option"
python mergeshp.py 5
python createzip.py output_varyingdemand/mv5_run_90/merged /merged
python deleteExistingGrid.py output_varyingdemand/mv5_run_90/metrics-local
python utilities/run_scenario.py mvMax5 input_demand/demand_100.json modKruskal input_demand/network_params_100.json output_varyingdemand/mv5_run_100 test_data/sample_demand_nodes.csv -t "section_option"
python mergeshp.py 6
python createzip.py output_varyingdemand/mv5_run_100/merged /merged
python deleteExistingGrid.py output_varyingdemand/mv5_run_100/metrics-local
python utilities/run_scenario.py mvMax5 input_demand/demand_200.json modKruskal input_demand/network_params_200.json output_varyingdemand/mv5_run_200 test_data/sample_demand_nodes.csv -t "section_option"
python mergeshp.py 7
python createzip.py output_varyingdemand/mv5_run_200/merged /merged
python deleteExistingGrid.py output_varyingdemand/mv5_run_200/metrics-local
python utilities/run_scenario.py mvMax5 input_demand/demand_300.json modKruskal input_demand/network_params_300.json output_varyingdemand/mv5_run_300 test_data/sample_demand_nodes.csv -t "section_option"
python mergeshp.py 8
python createzip.py output_varyingdemand/mv5_run_300/merged /merged
python deleteExistingGrid.py output_varyingdemand/mv5_run_300/metrics-local
python utilities/run_scenario.py mvMax5 input_demand/demand_400.json modKruskal input_demand/network_params_400.json output_varyingdemand/mv5_run_400 test_data/sample_demand_nodes.csv -t "section_option" 
python mergeshp.py 9
python createzip.py output_varyingdemand/mv5_run_400/merged /merged
python deleteExistingGrid.py output_varyingdemand/mv5_run_400/metrics-local
python utilities/run_scenario.py mvMax5 input_demand/demand_500.json modKruskal input_demand/network_params_500.json output_varyingdemand/mv5_run_500 test_data/sample_demand_nodes.csv -t "section_option"
python mergeshp.py 10
python createzip.py output_varyingdemand/mv5_run_500/merged /merged
python deleteExistingGrid.py output_varyingdemand/mv5_run_500/metrics-local
python utilities/run_scenario.py mvMax5 input_demand/demand_600.json modKruskal input_demand/network_params_600.json output_varyingdemand/mv5_run_600 test_data/sample_demand_nodes.csv -t "section_option"
python mergeshp.py 11
python createzip.py output_varyingdemand/mv5_run_600/merged /merged
python deleteExistingGrid.py output_varyingdemand/mv5_run_600/metrics-local
python utilities/run_scenario.py mvMax5 input_demand/demand_700.json modKruskal input_demand/network_params_700.json output_varyingdemand/mv5_run_700 test_data/sample_demand_nodes.csv -t "section_option"
python mergeshp.py 12
python createzip.py output_varyingdemand/mv5_run_700/merged /merged
python deleteExistingGrid.py output_varyingdemand/mv5_run_700/metrics-local
python utilities/run_scenario.py mvMax5 input_demand/demand_800.json modKruskal input_demand/network_params_800.json output_varyingdemand/mv5_run_800 test_data/sample_demand_nodes.csv -t "section_option"
python mergeshp.py 13
python createzip.py output_varyingdemand/mv5_run_800/merged /merged
python deleteExistingGrid.py output_varyingdemand/mv5_run_800/metrics-local
python utilities/run_scenario.py mvMax5 input_demand/demand_900.json modKruskal input_demand/network_params_900.json output_varyingdemand/mv5_run_900 test_data/sample_demand_nodes.csv -t "section_option"
python mergeshp.py 14
python createzip.py output_varyingdemand/mv5_run_900/merged /merged
python deleteExistingGrid.py output_varyingdemand/mv5_run_900/metrics-local
python utilities/run_scenario.py mvMax5 input_demand/demand_1000.json modKruskal input_demand/network_params_1000.json output_varyingdemand/mv5_run_1000 test_data/sample_demand_nodes.csv -t "section_option"
python mergeshp.py 15
python createzip.py output_varyingdemand/mv5_run_1000/merged /merged
python deleteExistingGrid.py output_varyingdemand/mv5_run_1000/metrics-local
python utilities/run_scenario.py mvMax5 input_demand/demand_2000.json modKruskal input_demand/network_params_2000.json output_varyingdemand/mv5_run_2000 test_data/sample_demand_nodes.csv -t "section_option"
python mergeshp.py 16
python createzip.py output_varyingdemand/mv5_run_2000/merged /merged
python deleteExistingGrid.py output_varyingdemand/mv5_run_2000/metrics-local


python householdscalculate.py
python normalizelenght.py
