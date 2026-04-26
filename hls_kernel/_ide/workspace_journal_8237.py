# 2026-04-22T14:11:29.254333862
import vitis

client = vitis.create_client()
client.set_workspace(path="hls_kernel")

cfg = client.get_config_file(path="/home/oldak/big-boi-pj/hub/hls_kernel/hls_component/hls_config.cfg")

cfg.set_value(section="hls", key="syn.top", value="kernel")

vitis.dispose()

