# chatglm.cpp.singularity

基于[chatglm.cpp](https://github.com/li-plus/chatglm.cpp)项目构建的singularity容器，容器内含作者提供的`chatglm-cpp[api]`，除包含chatglm.cpp外还包有类openai的api服务

## 构建方式

```bash
singularity build --fakeroot chatglm.cpp.singularity.sif build.def
```

## 运行方式

- 按照原作者说明准备好模型文件
- 使用命令行将目录绑定到容器内，并且启动服务

```bash
singularity exec \
   --bind model:/model/ \
   --env MODEL=/model/chatglm2-ggml.q4_0.bin \
   chatglm.cpp.singularity.sif \
   uvicorn chatglm_cpp.openai_api:app --host 0.0.0.0 --port 8877
```
