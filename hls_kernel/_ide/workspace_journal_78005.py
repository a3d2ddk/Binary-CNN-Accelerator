# 2026-04-29T00:33:59.492048251
import vitis

client = vitis.create_client()
client.set_workspace(path="kernel")

vitis.dispose()

