BASE_MODEL="/model/13B_hf"
LORA_PATH="/home/tianjie/Documents/DialogueGeneration/trl/checkpoint/checkpoint-1600"
USE_LOCAL=1
if [ USE_LOCAL == 1 ]
then
cp ./config-sample/adapter_config.json $LORA_PATH
fi
CUDA_VISIBLE_DEVICES=0 python chat.py \
    --model_path $BASE_MODEL \
    --lora_path $LORA_PATH \
    --use_local $USE_LOCAL

