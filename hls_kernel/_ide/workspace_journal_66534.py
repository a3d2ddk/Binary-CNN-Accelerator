# 2026-04-20T12:18:56.281102697
import vitis

client = vitis.create_client()
client.set_workspace(path="kernel")

comp = client.create_hls_component(name = "hls_component",cfg_file = ["hls_config.cfg"],template = "empty_hls_component")

cfg = client.get_config_file(path="/home/oldak/big-boi-pj/kernel/hls_component/hls_config.cfg")

cfg.set_values(key="syn.file", values=["kern.cpp"])

cfg.set_value(section="hls", key="syn.top", value="kern")

vitis.dispose()

