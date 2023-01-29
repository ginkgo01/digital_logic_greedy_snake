@echo off
set xv_path=H:\\Xilinx\\Vivado\\2016.2\\bin
call %xv_path%/xelab  -wto f659b5e530c94d59be5ba32a5589c3d2 -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip --snapshot top_tb_behav xil_defaultlib.top_tb xil_defaultlib.glbl -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
