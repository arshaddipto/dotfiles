-- All configs in this file are hardware-specific
-- They may need changes or have to be removed depending on the hardware

-- See http://wiki.hypr.land/Configuring/Basics/Monitors/
hl.monitor({
    output = "eDP-1",
    mode = "1920x1080@144",
    position = "0x0",
    scale = "1",
})

-- To use integrated graphics instead of dedicated GPU to save battery life
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Multi-GPU/
hl.env("AQ_DRM_DEVICES", "/dev/dri/amd-igpu")

-- Ref https://wiki.hypr.land/Configuring/Workspace-Rules/
for i = 1, 5 do
    hl.workspace_rule({ workspace = i, monitor = "eDP-1", persistent = true })
end

-- See https://wiki.hypr.land/Configuring/Keywords/#per-device-input-configs for more
hl.device({
    name = "logitech-wireless-mouse-1",
    sensitivity = -0.6,
})
