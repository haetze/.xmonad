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
       , font = "xft:Bitstream Vera Sans Mono:size=18:bold:anitalias=true"
       , alignSep = "}{"
       
       , commands = [Run Com "/home/haetze/.xmonad/.battery" [] "battery" 10
                    ,Run Com "/home/haetze/.xmonad/.audio" [] "audio" 10
                    ,Run Com "/home/haetze/.xmonad/.snd" [] "sound" 10
                    ,Run Com "cat" ["/home/haetze/.xmonad/.radio"] "radio" 10
           ]
       , template = "<fc=#ee9a00>%date%</fc>| %uname% | %battery% | <action=`amixer set Master 0` button=1> %sound% on %audio% </action> | %radio% |" 
       }
