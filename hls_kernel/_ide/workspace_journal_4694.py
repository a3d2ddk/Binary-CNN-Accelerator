# 2026-05-01T16:04:48.739549225
import vitis

client = vitis.create_client()
client.set_workspace(path="kernel")

comp = client.get_component(name="hls_component")
comp.run(operation="C_SIMULATION")

comp.run(operation="IMPLEMENTATION")

