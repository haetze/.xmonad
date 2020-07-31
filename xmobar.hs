Config { 

   -- appearance
     font =         "xft:Bitstream Vera Sans Mono:size=9:bold:antialias=true"
   , bgColor =      "black"
   , fgColor =      "#646464"
   , position =     Top
   , border =       BottomB
   , borderColor =  "#646464"

   -- layout
   , sepChar =  "%"   -- delineator between plugin names and straight text
   , alignSep = "}{"  -- separator between left-right alignment
   , template = "%battery% | %cpu% | %memory% }{ %EDLW% | %date%  "

   -- general behavior
   , lowerOnStart =     True    -- send to bottom of window stack on start
   , hideOnStart =      False   -- start with window unmapped (hidden)
   , allDesktops =      True    -- show on all desktops
   , overrideRedirect = True    -- set the Override Redirect flag (Xlib)
   , pickBroadest =     False   -- choose widest display (multi-monitor)
   , persistent =       True    -- enable/disable hiding (True = disabled)

   , commands = 

        -- weather monitor
        [ Run Weather "EDLW" [ "--template"
                             , "Dortmund <skyCondition> | <fc=#4682B4><tempC></fc>°C | <fc=#4682B4><rh></fc>% | <fc=#4682B4><pressure></fc>hPa"
                             ] 36000
        , Run Cpu [ "-L"      , "3"
                  , "-H"      , "50"
	          , "--normal", "green"
                  , "--high"  ,"red"
	          ]
	  10
        , Run Memory [ "-t","Mem: <usedratio>%" ] 10		     
        , Run Battery ["-t", "<acstatus>: <left>% - <timeleft>",
	               "-h", "green",
	               "-l", "red"
	              ] 10
        ]
   }
