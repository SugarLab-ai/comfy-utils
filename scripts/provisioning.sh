#!/bin/bash

# This file will be sourced in init.sh

# https://raw.githubusercontent.com/ai-dock/comfyui/main/config/provisioning/default.sh

# Packages are installed after nodes so we can fix them...

PYTHON_PACKAGES=(
    #"opencv-python==4.7.0.72"
)
WORKSPACE="."  # Set this to your desired path


# sudo apt install libpython3.10-dev
# sudo apt-get install build-essential

NODES=(
    # "https://github.com/ltdrdata/ComfyUI-Manager"
    "https://github.com/wmatson/easy-comfy-nodes"

    "https://github.com/giriss/comfy-image-saver"
    "https://github.com/Suzie1/ComfyUI_Comfyroll_CustomNodes"
    "https://github.com/Fannovel16/comfyui_controlnet_aux"
    "https://github.com/cubiq/ComfyUI_IPAdapter_plus"
    "https://github.com/sipherxyz/comfyui-art-venture"
    "https://github.com/ntc-ai/ComfyUI-DARE-LoRA-Merge"
    "https://github.com/ltdrdata/ComfyUI-Impact-Pack"
    "https://github.com/LykosAI/ComfyUI-Inference-Core-Nodes"
    "https://github.com/shiimizu/ComfyUI-TiledDiffusion"
    "https://github.com/Derfuu/Derfuu_ComfyUI_ModdedNodes"
    "https://github.com/TRI3D-LC/tri3d-comfyui-nodes"
    "https://github.com/Gourieff/comfyui-reactor-node"
    "https://github.com/Kosinkadink/ComfyUI-AnimateDiff-Evolved"
    "https://github.com/Kosinkadink/ComfyUI-VideoHelperSuite"

)

ANIMATE_DIFF_MODELS=(
    "https://cs2100320035a2b091d.blob.core.windows.net/models/animatediff_lightning_1step_comfyui.safetensors"
     "https://cs2100320035a2b091d.blob.core.windows.net/models/animatediff_lightning_2step_comfyui.safetensors"
    "https://cs2100320035a2b091d.blob.core.windows.net/models/animatediff_lightning_4step_comfyui.safetensors"

)
BBOX=(
    "https://cs2100320035a2b091d.blob.core.windows.net/models/pussyV2.pt"
    "https://cs2100320035a2b091d.blob.core.windows.net/models/vagina-v3.2.pt"
    "https://cs2100320035a2b091d.blob.core.windows.net/models/CockAndBallYolo8x.pt"
    "https://cs2100320035a2b091d.blob.core.windows.net/models/female_breast-v4.2.pt"
    "https://cs2100320035a2b091d.blob.core.windows.net/models/nipple.pt"
    "https://cs2100320035a2b091d.blob.core.windows.net/models/nsfwWatermarkDetection_v10.zip"
    "https://cs2100320035a2b091d.blob.core.windows.net/models/nsfw_watermarks_s_yolov8_v1.pt"
)

IP_ADAPTER=(
    "https://cs2100320035a2b091d.blob.core.windows.net/models/ip-adapter_sdxl.safetensors"
    "https://cs2100320035a2b091d.blob.core.windows.net/models/ip-adapter-faceid-plusv2_sdxl.bin"
    "https://cs2100320035a2b091d.blob.core.windows.net/models/nsfwWatermarkDetection_v10.zip"
)
CLIP_VISION=(
"https://cs2100320035a2b091d.blob.core.windows.net/models/clip_vision_ViT_H.safetensors"
"https://cs2100320035a2b091d.blob.core.windows.net/models/CLIP-ViT-H-14-laion2B-s32B-b79K.safetensors"

)


INSIGHTFACE=(
    "https://cs2100320035a2b091d.blob.core.windows.net/models/inswapper_128.onnx"
    "https://cs2100320035a2b091d.blob.core.windows.net/models/inswapper_128_fp16.onnx"
)

CHECKPOINT_MODELS=(
    "https://cs2100320035a2b091d.blob.core.windows.net/models/bigaspV1_v10.safetensors"
    "https://cs2100320035a2b091d.blob.core.windows.net/models/sdxxxl_v30.safetensors"
    "https://cs2100320035a2b091d.blob.core.windows.net/models/furryblend_v10.safetensors"
    "https://cs2100320035a2b091d.blob.core.windows.net/models/hentaiMixXLRoadTo_v50.safetensors"
)

LORA_MODELS=(
    "https://cs2100320035a2b091d.blob.core.windows.net/models/Hyper-SDXL-12steps-CFG-lora.safetensors"
    "https://cs2100320035a2b091d.blob.core.windows.net/models/ColorAssociatedAnatomy-v2.safetensors"
    "https://cs2100320035a2b091d.blob.core.windows.net/models/dildo-v03-std-e97.safetensors"
    "https://cs2100320035a2b091d.blob.core.windows.net/models/faces_v3.safetensors"
    "https://cs2100320035a2b091d.blob.core.windows.net/models/2FingersSDXL_v03.safetensors"
    "https://cs2100320035a2b091d.blob.core.windows.net/models/bl0j0.safetensors"
    "https://cs2100320035a2b091d.blob.core.windows.net/models/cum-xl-1.1.safetensors"
    "https://cs2100320035a2b091d.blob.core.windows.net/models/Erect Nipples XL.safetensors"
    "https://cs2100320035a2b091d.blob.core.windows.net/models/FemalePOV.safetensors"
    "https://cs2100320035a2b091d.blob.core.windows.net/models/gangbang_blowjob_sdxl-4416-24_v1.safetensors"
    "https://cs2100320035a2b091d.blob.core.windows.net/models/LCM_LoRA_Weights_SD15.safetensors"
    "https://cs2100320035a2b091d.blob.core.windows.net/models/MissionaryVaginal-v1-SDXL.safetensors"
    "https://cs2100320035a2b091d.blob.core.windows.net/models/NaturalBodyV2.0.safetensors"
    "https://cs2100320035a2b091d.blob.core.windows.net/models/sdxl-pytorch_lora_weights.safetensors"
    "https://cs2100320035a2b091d.blob.core.windows.net/models/polyhedron_all_sdxl-000004.safetensors"
    "https://cs2100320035a2b091d.blob.core.windows.net/models/sdxl_lightning_2step_lora.safetensors"
    "https://cs2100320035a2b091d.blob.core.windows.net/models/sdxl_lightning_4step_lora.safetensors"
    "https://cs2100320035a2b091d.blob.core.windows.net/models/sdxl_lightning_8step_lora.safetensors"
    "https://cs2100320035a2b091d.blob.core.windows.net/models/NsfwPovAllInOneLoraSdxl-000009.safetensors"
    "https://cs2100320035a2b091d.blob.core.windows.net/models/YoM_HWMichelle.safetensors"
    "https://cs2100320035a2b091d.blob.core.windows.net/models/Hyper-SDXL-1step-lora.safetensors"
    "https://cs2100320035a2b091d.blob.core.windows.net/models/Hyper-SDXL-2steps-lora.safetensors"
    "https://cs2100320035a2b091d.blob.core.windows.net/models/Hyper-SDXL-4steps-lora.safetensors"
    "https://cs2100320035a2b091d.blob.core.windows.net/models/Hyper-SDXL-8steps-lora.safetensors"
    "https://cs2100320035a2b091d.blob.core.windows.net/models/xpenis-v2.03.safetensors"
)


VAE_MODELS=(
    "https://cs2100320035a2b091d.blob.core.windows.net/models/sdxl_vae.safetensors"
)

ESRGAN_MODELS=(
    # "https://huggingface.co/ai-forever/Real-ESRGAN/resolve/main/RealESRGAN_x4.pth"
    # "https://huggingface.co/FacehugmanIII/4x_foolhardy_Remacri/resolve/main/4x_foolhardy_Remacri.pth"
    # "https://huggingface.co/Akumetsu971/SD_Anime_Futuristic_Armor/resolve/main/4x_NMKD-Siax_200k.pth"
)

CONTROLNET_MODELS=(
"https://cs2100320035a2b091d.blob.core.windows.net/models/t2i-adapter-depth-midas-sdxl-1.0.safetensors"
   
)

### DO NOT EDIT BELOW HERE UNLESS YOU KNOW WHAT YOU ARE DOING ###

function provisioning_start() {

    DISK_GB_AVAILABLE=$(($(df --output=avail -m "${WORKSPACE}" | tail -n1) / 1000))
    DISK_GB_USED=$(($(df --output=used -m "${WORKSPACE}" | tail -n1) / 1000))
    DISK_GB_ALLOCATED=$(($DISK_GB_AVAILABLE + $DISK_GB_USED))
    source .venv/bin/activate
    provisioning_print_header
    provisioning_get_nodes
    provisioning_install_python_packages
    provisioning_get_models \
        "${WORKSPACE}/models/checkpoints" \
        "${CHECKPOINT_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/models/loras" \
        "${LORA_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/models/controlnet" \
        "${CONTROLNET_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/models/vae" \
        "${VAE_MODELS[@]}"
    provisioning_get_models \
        "${WORKSPACE}/models/esrgan" \
        "${ESRGAN_MODELS[@]}"
     provisioning_get_models \
        "${WORKSPACE}/models/ipadapter" \
        "${IP_ADAPTER[@]}"
    provisioning_get_models \
        "${WORKSPACE}/models/ultralytics/bbox" \
        "${BBOX[@]}"
    provisioning_get_models \
        "${WORKSPACE}/models/clip_vision" \
        "${CLIP_VISION[@]}"
    provisioning_get_models \
        "${WORKSPACE}/models/insightface" \
        "${INSIGHTFACE[@]}"
    provisioning_get_models \
        "${WORKSPACE}/custom_nodes/ComfyUI-AnimateDiff-Evolved/models" \
        "${ANIMATE_DIFF_MODELS[@]}"
    provisioning_print_end
}

function provisioning_get_nodes() {
    for repo in "${NODES[@]}"; do
        dir="${repo##*/}"
        path="${WORKSPACE}/custom_nodes/${dir}"
        requirements="${path}/requirements.txt"
        if [[ -d $path ]]; then
            if [[ ${AUTO_UPDATE,,} != "false" ]]; then
                printf "Updating node: %s...\n" "${repo}"
                ( cd "$path" && git pull )
                if [[ -e $requirements ]]; then
                    pip install -r "$requirements"
                fi
            fi
        else
            printf "Downloading node: %s...\n" "${repo}"
            git clone "${repo}" "${path}" --recursive
            if [[ -e $requirements ]]; then
                pip install -r "${requirements}"
            fi
        fi
    done
}

function provisioning_install_python_packages() {
    if [ ${#PYTHON_PACKAGES[@]} -gt 0 ]; then
        micromamba -n comfyui run ${PIP_INSTALL} ${PYTHON_PACKAGES[*]}
    fi
}

function provisioning_get_models() {
    if [[ -z $2 ]]; then return 1; fi
    dir="$1"
    mkdir -p "$dir"
    shift
    if [[ $DISK_GB_ALLOCATED -ge $DISK_GB_REQUIRED ]]; then
        arr=("$@")
    else
        printf "WARNING: Low disk space allocation - Only the first model will be downloaded!\n"
        arr=("$1")
    fi
    
    printf "Downloading %s model(s) to %s...\n" "${#arr[@]}" "$dir"
    for url in "${arr[@]}"; do
        printf "Downloading: %s\n" "${url}"
        provisioning_download "${url}" "${dir}"
        printf "\n"
    done
}

function provisioning_print_header() {
    printf "\n##############################################\n#                                            #\n#          Provisioning container            #\n#                                            #\n#         This will take some time           #\n#                                            #\n# Your container will be ready on completion #\n#                                            #\n##############################################\n\n"
    if [[ $DISK_GB_ALLOCATED -lt $DISK_GB_REQUIRED ]]; then
        printf "WARNING: Your allocated disk size (%sGB) is below the recommended %sGB - Some models will not be downloaded\n" "$DISK_GB_ALLOCATED" "$DISK_GB_REQUIRED"
    fi
}

function provisioning_print_end() {
    printf "\nProvisioning complete:  Web UI will start now\n\n"
}

# Download from $1 URL to $2 file path
function provisioning_download() {
    wget -qnc --content-disposition --show-progress -e dotbytes="${3:-4M}" -P "$2" "$1"
}

provisioning_start
