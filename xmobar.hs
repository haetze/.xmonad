

Config { borderColor = "black"
       , border = TopB
       , bgColor = "black"
       , fgColor = "grey"
       , alpha = 255
       , position = Top
       , textOffset = -1
       , iconOffset = -1
       , lowerOnStart = True
       , pickBroadest = False
       , persistent = False
       , hideOnStart = False
       , iconRoot = "."
       , allDesktops = True
       , overrideRedirect = True
       , sepChar = "%"
       , additionalFonts = []
       , alignSep = "}{"
       , font = "xft:Open Sans:size=10, xft:Times New Roman-10:italic"
       , commands = [Run Com ".xmonad/.battery" [] "battery" 10
                    ,Run Com ".xmonad/.audio" [] "audio" 10
                    ,Run Com ".xmonad/.snd" [] "sound" 10
                    ,Run Com "cat" [".xmonad/.radio"] "radio" 10
                    ,Run Com "cat" [".xmonad/.radio"] "radio" 10
                    ,Run StdinReader
           ]
       , template = "<fc=#ee9a00>%date%</fc>|%battery%|<action=`amixer set Master 0` button=1>%sound% on %audio%</action>|%radio%|" 
       }
