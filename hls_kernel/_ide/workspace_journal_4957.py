# 2026-04-29T16:27:10.774313455
import vitis

client = vitis.create_client()
client.set_workspace(path="kernel")

comp = client.get_component(name="hls_component")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="C_SIMULATION")

vitis.dispose()

