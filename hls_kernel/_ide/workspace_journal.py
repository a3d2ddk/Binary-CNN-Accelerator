# 2026-04-27T12:21:57.019506898
import vitis

client = vitis.create_client()
client.set_workspace(path="hls_kernel")

comp = client.get_component(name="hls_component")
vitis.dispose()

