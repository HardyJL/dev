hl.monitor({ output = "eDP-1", mode = "highres", position = "auto-center-down", scale = 1.33 })
hl.monitor({ output = "desc: LG Electronics LG TV SSCR2 0x01010101", mode = "2560x1440@120", position = "0x0", scale = 1.25 })
hl.monitor({ output = "desc: Huawei Technologies Co. Inc. HUAWEI AD80HW", mode = "1920x1080@75", position = "auto-center-up", scale = "auto" })
hl.monitor({ output = "desc: Dell Inc. DELL S2721HSX FLQ0193", mode = "1920x1080@75", position = "auto-center-left", scale = "auto", transform = 3 })
hl.monitor({ output = "desc: Iiyama North America PL3271Q", mode = "2560x1440@165", position = "auto", scale = "auto" })
hl.monitor({ output = "desc: MS Telematica U0342 0x00000001", mode = "3840x2160@60", position = "auto", scale = 3 })

-- trigger when the switch is turning on
hl.bind("switch:on:Lid Switch", hl.dsp.exec_cmd("hyprlock"), { locked = true })
