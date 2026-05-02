# 2026-05-01T16:35:56.382604234
import vitis

client = vitis.create_client()
client.set_workspace(path="kernel")

vitis.dispose()

