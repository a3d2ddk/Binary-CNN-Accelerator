# 2026-05-01T00:11:18.457867047
import vitis

client = vitis.create_client()
client.set_workspace(path="kernel")

comp = client.get_component(name="hls_component")
comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="CO_SIMULATION")

comp.run(operation="PACKAGE")

comp.run(operation="IMPLEMENTATION")

