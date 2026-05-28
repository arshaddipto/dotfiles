-- All configs in this file are hardware-specific
-- They may need changes or have to be removed depending on the hardware

-- See http://wiki.hypr.land/Configuring/Basics/Monitors/
hl.monitor({
    output = "Virtual-1",
    mode = "1920x1080@60",
    position = "0x0",
    scale = "1",
})

-- Ref https://wiki.hypr.land/Configuring/Workspace-Rules/
for i = 1, 5 do
    hl.workspace_rule({ workspace = i, monitor = "Virtual-1", persistent = true })
end

-- See https://wiki.hypr.land/Configuring/Keywords/#per-device-input-configs for more
hl.device({
    name = "logitech-wireless-mouse-1",
    sensitivity = -0.6,
})
