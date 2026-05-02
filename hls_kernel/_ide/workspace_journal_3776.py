# 2026-05-01T15:39:42.207093927
import vitis

client = vitis.create_client()
client.set_workspace(path="kernel")

comp = client.get_component(name="hls_component")
comp.run(operation="IMPLEMENTATION")

