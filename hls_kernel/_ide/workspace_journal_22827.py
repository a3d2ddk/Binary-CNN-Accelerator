# 2026-05-01T17:23:21.696584111
import vitis

client = vitis.create_client()
client.set_workspace(path="kernel")

comp = client.get_component(name="hls_component")
comp.run(operation="C_SIMULATION")

comp.run(operation="SYNTHESIS")

comp.run(operation="SYNTHESIS")

comp.run(operation="PACKAGE")

vitis.dispose()

