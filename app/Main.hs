{-# LANGUAGE OverloadedStrings #-}

module Main (main) where

import SDL

main :: IO ()
main = do
  initializeAll
  window <- createWindow "My SDL Application" defaultWindow
  delay 5000
  destroyWindow window