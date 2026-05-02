# 2026-04-29T08:58:57.503173628
import vitis

client = vitis.create_client()
client.set_workspace(path="kernel")

cfg = client.get_config_file(path="/home/oldak/big-boi-pj/kernel/hls_component/hls_config.cfg")

cfg.set_values(key="tb.file", values=["/home/oldak/Downloads/files/tb_cnn_accelerator.cpp"])

comp = client.get_component(name="hls_component")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

cfg.set_value(section="hls", key="syn.top", value="kernel")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

vitis.dispose()

