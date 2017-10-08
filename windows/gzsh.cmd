@echo off

rem Author: Xiao Liang <13267.okk@gmail.com>
rem gzsh stands for good zsh which fixes bug that some keys can't be read by bash 
rem Ref: https://github.com/Maximus5/ConEmu/issues/629

bash -cur_console:p1 -c "zsh"