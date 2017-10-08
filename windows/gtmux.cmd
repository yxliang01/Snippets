@echo off

rem Author: Xiao Liang <13267.okk@gmail.com>
rem gtmux stands for good tmux which fixes bug that some keys can't be read by bash 
rem Ref: https://github.com/Maximus5/ConEmu/issues/629

bash -cur_console:p1 -l -c "tmux"