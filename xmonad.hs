import XMonad
import XMonad.Hooks.DynamicLog
import XMonad.Core
import XMonad.Hooks.ManageDocks
import XMonad.Util.Run(spawnPipe, runInTerm)
import XMonad.Util.EZConfig(additionalKeys)
import System.IO


main = do
    xmproc <- spawnPipe "xmobar"
    xmonad $ docks $ def
        { manageHook = manageDocks <+> manageHook def
        , layoutHook = avoidStruts  $  layoutHook def
        , logHook = dynamicLogWithPP $ xmobarPP
                        { ppOutput = \_ -> return ()
                        , ppTitle = xmobarColor "green" "" . shorten 50
                        }
        } `additionalKeys`
        [ ((mod1Mask, xK_o), spawn "xtrlock")
        , ((mod1Mask, xK_s), spawn "scrot '%Y-%m-%d_%H:%M:%S.png' -e 'mv $f ~/shots/'" )
        , ((mod1Mask, xK_u), spawn "xterm -fa 'Monospace' -fs 12x24" )
        , ((mod1Mask, xK_F1), spawn "/home/$(whoami)/.xmonad/1live.sh")
        , ((mod1Mask, xK_F2), spawn "/home/$(whoami)/.xmonad/pkill.sh mplayer /home/$(whoami)/.xmonad/.radio")
        , ((mod1Mask, xK_F11), spawn "amixer -D pulse sset Master 5%-")
        , ((mod1Mask, xK_F12), spawn "amixer -D pulse sset Master 5%+")
        ]
