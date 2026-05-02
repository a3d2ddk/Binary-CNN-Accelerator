# 2026-05-01T21:40:16.441972329
import vitis

client = vitis.create_client()
client.set_workspace(path="hls_kernel")

comp = client.get_component(name="hls_component")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

