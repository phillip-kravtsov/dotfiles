wget https://raw.githubusercontent.com/stas00/ml-engineering/master/multi-node/all_reduce_bench.py
export NNODES=1
export GPUS_PER_NODE=4
torchrun --nproc_per_node $GPUS_PER_NODE --nnodes $NNODES --max_restarts 0 --tee 3 all_reduce_bench.py
