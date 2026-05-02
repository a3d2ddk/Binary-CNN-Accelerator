# 2026-04-29T21:35:16.190619847
import vitis

client = vitis.create_client()
client.set_workspace(path="kernel")

comp = client.get_component(name="hls_component")
comp.run(operation="C_SIMULATION")

cfg = client.get_config_file(path="/home/oldak/big-boi-pj/kernel/hls_component/hls_config.cfg")

cfg.set_value(section="hls", key="syn.top", value="kernel")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

comp.run(operation="C_SIMULATION")

vitis.dispose()

