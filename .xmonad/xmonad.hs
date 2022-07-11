-- Base
import XMonad
import System.Directory
import System.IO (hClose, hPutStr, hPutStrLn)
import System.Exit (exitSuccess)
import qualified XMonad.StackSet as W

--Utils
import XMonad.Util.SpawnOnce
import XMonad.Util.EZConfig (additionalKeysP, mkNamedKeymap)

--myFont :: String
--myFont = "xft:FiraCode Nerd Font Mono:regular:size=9:antialias=true:hinting=true"

myModMask :: KeyMask
myModMask = mod4Mask        -- Sets modkey to super/windows key

myTerminal :: String
myTerminal = "alacritty"    -- Sets default terminal

--myBrowser :: String
--mybrowser = "qutebrowser"  -- Sets qutebrowser as browser

myEmacs :: String
myEmacs = "emacsclient -c -a 'emacs' "  -- Makes emacs keybindings easier to type

myEditor :: String
myEditor = "emacsclient -c -a 'emacs' "  -- Sets emacs as editor
-- myEditor = myTerminal ++ " -e vim "    -- Sets vim as editor

myBorderWidth :: Dimension
myBorderWidth = 2           -- Sets border width for windows

myStartupHook :: X ()
myStartupHook = do
  spawnOnce "picom"
  spawnOnce "nm-applet"
  spawnOnce "volumeicon"
  spawn "/usr/bin/emacs --daemon"

  setWName LG3D

main :: IO ()
main = do

  xmonad $ addDescrKeys' ((mod4Mask, xK_F1), showKeybindings) myKeys $ ewmh $ docks $ def
    { manageHook         = myManageHook <+> manageDocks
       , modMask            = myModMask
    , terminal           = myTerminal
    , startupHook        = myStartupHook
