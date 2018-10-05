set -x
set -e

export CUDA_VISIBLE_DEVICES=$1

python test_pixel_link_on_any_image.py \
            --checkpoint_path=$2 \
            --dataset_dir=$3 \
            --eval_image_width=1920\
            --eval_image_height=1280\
            --pixel_conf_threshold=0.5\
            --link_conf_threshold=0.5\
            --gpu_memory_fraction=-1
