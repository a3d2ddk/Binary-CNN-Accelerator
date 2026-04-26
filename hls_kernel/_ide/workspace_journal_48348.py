# 2026-04-26T16:12:30.759974703
import vitis

client = vitis.create_client()
client.set_workspace(path="hls_kernel")

cfg = client.get_config_file(path="/home/oldak/big-boi-pj/hub/hls_kernel/hls_component/hls_config.cfg")

cfg.set_values(key="syn.file", values=["kern.cpp", "binary_cnn.h"])

cfg.set_values(key="syn.file", values=["kern.cpp"])

cfg.set_values(key="syn.blackbox.file", values=[])

vitis.dispose()

