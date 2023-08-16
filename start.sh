singularity exec \
   --bind model:/model/ \
   --env MODEL=/model/chatglm2-ggml.q4_0.bin \
   chatglm.cpp.singularity.sif \
   uvicorn chatglm_cpp.openai_api:app --host 0.0.0.0 --port 8877