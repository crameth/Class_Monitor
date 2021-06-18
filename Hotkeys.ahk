#Include ./src/Class_Monitor.ahk

defaultSettings := []
defaultSettings["Brightness_0"] := Monitor.GetBrightness("0")["Current"]
defaultSettings["Brightness_1"] := Monitor.GetBrightness("1")["Current"]
defaultSettings["Contrast_0"] := Monitor.GetContrast("0")["Current"]
defaultSettings["Contrast_1"] := Monitor.GetContrast("1")["Current"]
defaultSettings["Gamma_0_R"] := Monitor.GetGammaRamp("0")["Red"]
defaultSettings["Gamma_0_G"] := Monitor.GetGammaRamp("0")["Green"]
defaultSettings["Gamma_0_B"] := Monitor.GetGammaRamp("0")["Blue"]
defaultSettings["Gamma_1_R"] := Monitor.GetGammaRamp("1")["Red"]
defaultSettings["Gamma_1_G"] := Monitor.GetGammaRamp("1")["Green"]
defaultSettings["Gamma_1_B"] := Monitor.GetGammaRamp("1")["Blue"]

; for k, v in defaultSettings
;     MsgBox % k ": " v

^1::
Monitor.SetBrightness(100, "0")
Monitor.SetBrightness(90, "1")
Monitor.SetContrast(50, "0")
Monitor.SetContrast(75, "1")
Monitor.SetGammaRamp(128, 128, 128, "1")
Monitor.SetGammaRamp(128, 128, 128, "2")
return

^2::
Monitor.SetBrightness(defaultSettings["Brightness_0"], "0")
Monitor.SetBrightness(defaultSettings["Brightness_1"], "1")
Monitor.SetContrast(defaultSettings["Contrast_0"] * 1.2, "0")
Monitor.SetContrast(defaultSettings["Contrast_1"] * 1.2, "1")
Monitor.SetGammaRamp(200, 200, 200, "1")
Monitor.SetGammaRamp(200, 200, 200, "2")
return

^3::
Monitor.SetBrightness(defaultSettings["Brightness_0"], "0")
Monitor.SetBrightness(defaultSettings["Brightness_1"], "1")
Monitor.SetContrast(defaultSettings["Contrast_0"] * 1.2, "0")
Monitor.SetContrast(defaultSettings["Contrast_1"] * 1.2, "1")
Monitor.SetGammaRamp(240, 240, 240, "0")
Monitor.SetGammaRamp(240, 240, 240, "1")
return

^4::
Monitor.SetBrightness(defaultSettings["Brightness_0"], "0")
Monitor.SetBrightness(defaultSettings["Brightness_1"], "1")
Monitor.SetContrast(defaultSettings["Contrast_0"] * 1.5, "0")
Monitor.SetContrast(defaultSettings["Contrast_1"] * 1.5, "1")
Monitor.SetGammaRamp(200, 200, 200, "0")
Monitor.SetGammaRamp(200, 200, 200, "1")
return