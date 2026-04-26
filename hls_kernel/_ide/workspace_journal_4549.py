# 2026-04-22T15:54:48.057350473
import vitis

client = vitis.create_client()
client.set_workspace(path="hls_kernel")

comp = client.get_component(name="hls_component")
comp.run(operation="C_SIMULATION")

vitis.dispose()

