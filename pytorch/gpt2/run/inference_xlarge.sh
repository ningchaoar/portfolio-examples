#!/bin/bash
python inference_gpt2.py \
    --model gpt2-xl \
    --max-len 1024 \
    --layers-per-ipu 1 6 6 7 7 7 7 7 \
    --matmul-proportion 0.2 0.2 0.2 0.2 0.2 0.2 0.2 0.2 \
    --ipus-per-replica 8 \
    --replication-factor 1 \
    --epochs 20 \
    --batches-per-step 1 \
    --batch-size 1 \
    --gradient-accumulation 1 \
    --embedding-serialization-factor 4 \
    --enable-half-partials True \
    --train-path 'generated' \
    --replicated-tensor-sharding False \
    --compile-only False