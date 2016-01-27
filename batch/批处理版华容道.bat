    @echo off
    rem code by cn-dos moniuming
    title 华容道...
    echo.
    echo.        欢迎使用本绿色无毒无任何插件的"华容道"小游戏,使用方法如下:
    echo.    1.游戏目的:把标记为"０"(曹操)的方块移动到最下面的缺口处即算胜利.
    echo.    2.如果要移动某个方块,输入其序号和方向,然后回车即可,如要把下图中的8往右移动
    echo.     一格,输入"8d"(不含引号)然后回车即可.
    echo.    3.本游戏支持一个方块连续的移动,如要把下图中的6移动到9的旁边(下==^>右),
    echo.      输入"6sd"(不含引号)然后回车即可.
    echo.    4.在游戏过程中如果直接回车会退回主菜单.
    echo.    5.在游戏过程中如果输入"h"(不含引号)会看到游戏的演示.
    echo.    6.本游戏说明只在运行开始时出现一次.
    echo.    7.表示方向的字母分别为:(w↑,a←,s↓,d→).
    echo.    8.游戏过程中(包括演示过程)在标题栏会显示已经走的步数和走法.
    echo.    请按任意键开始游戏...        祝你玩得愉快!!!
    echo.
    echo.　　　　┏━┳━━━━┳━┓
    echo.　　　　┃　┃　　　　┃　┃
    echo.　　　　┃２┃　０　　┃３┃
    echo.　　　　┃　┃　　　　┃　┃
    echo.　　　　┃　┃　　　　┃　┃
    echo.　　　　┣━╋━━━━╋━┫
    echo.　　　　┃４┃　１　　┃５┃
    echo.　　　　┃　┣━━┳━┫　┃
    echo.　　　　┃　┃６　┃７┃　┃
    echo.　　　　┣━╋━━┻━╋━┫
    echo.　　　　┃８┃　　　　┃９┃
    set/p=　　　　┗━┛　　　　┗━┛<nul&pause>nul
    :bgn
    setlocal enabledelayedexpansion

    set "state1=8d 4s 1a 7s 5a 9w 7d 5s 1dd 6wa 8ww 5a 9as 1s 8dd 6dd 4w 5w 9aa 7aa 1s 6sd 5d 4d 2ss 0a 3a 8ww 6ww 5d 3ss 0d 2ww 4a 7ww 9dw 1aa 3s 5s 7dd 0s 8aa 6wa 7ww 5ww 3d 9ds 0s 8sd 2d 4ww 0a 8ss 6s 7a 5w 3w 9d 8s 0d 4ss 2a 7a 6a 5a 3ww 0d 6ss 7ss 2d 4ww 6aw 1w 8aa 9aa 0s 7dd 6dd 1w 9wa 0a"

    set "state2=4s 8sa 9as 2dd 3w 4a 9s 8d 3d 1ss 0a 7aw 2w 8w 9w 5w 4dd 1s 3s 0s 7aa 6aa 2w 5w 9d 8s 0d 1ww 3a 4a 9s 8d 0s 6sd 7ds 1w 3w 2a 4a 5w 9a 8s 0d 3d 1s 2a 6w 7d 3w 4w 9aa 8aa 0s 5s 7s 6s 2dd 1w 3w 4w 8wa 0a"

    set /a least1=81,least2=62

    :bgn
    cls
    echo.
    echo.    ┏━━┓┏━━━━━━┓┏━━┓　　　　┏━━┓┏━━━━━━┓┏━━┓
    echo.    ┃　　┃┃　　　　　　┃┃　　┃　　　　┃　　┃┃　　　　　　┃┃６兵┃
    echo.    ┃２　┃┃　　　　　　┃┃３　┃　　　　┃１　┃┃　　　　　　┃┃　　┃
    echo.    ┃　　┃┃　０　曹操　┃┃　　┃　　　　┃　　┃┃　０　曹操　┃┗━━┛
    echo.    ┃黄　┃┃　　　　　　┃┃马　┃　　　　┃赵　┃┃　　　　　　┃┏━━┓
    echo.    ┃忠　┃┃　　　　　　┃┃超　┃　　　　┃云　┃┃　　　　　　┃┃７卒┃
    echo.    ┃　　┃┃　　　　　　┃┃　　┃　　　　┃　　┃┃　　　　　　┃┃　　┃
    echo.    ┗━━┛┗━━━━━━┛┗━━┛　　　　┗━━┛┗━━━━━━┛┗━━┛
    echo.    ┏━━┓┏━━━━━━┓┏━━┓　　　　┏━━━━━━┓┏━━┓┏━━┓
    echo.    ┃　　┃┃　１　关羽　┃┃　　┃　　　　┃　２　关羽　┃┃８勇┃┃９士┃
    echo.    ┃４　┃┃　　　　　　┃┃５　┃　　　　┃　　　　　　┃┃　　┃┃　　┃
    echo.    ┃　　┃┗━━━━━━┛┃　　┃　　　　┗━━━━━━┛┗━━┛┗━━┛
    echo.    ┃赵　┃┏━━┓┏━━┓┃张　┃　　　　┏━━┓┏━━━━━━┓┏━━┓
    echo.    ┃云　┃┃６兵┃┃７卒┃┃飞　┃　　　　┃　　┃┃　４　张飞　┃┃　　┃
    echo.    ┃　　┃┃　　┃┃　　┃┃　　┃　　　　┃３　┃┃　　　　　　┃┃５　┃
    echo.    ┗━━┛┗━━┛┗━━┛┗━━┛　　　　┃　　┃┗━━━━━━┛┃　　┃
    echo.    ┏━━┓　　　　　　　　┏━━┓　　　　┃黄　┃　　　　　　　　┃马　┃
    echo.    ┃８勇┃　　　　　　　　┃９士┃　　　　┃忠　┃　　　　　　　　┃超　┃
    echo.    ┃　　┃　　　　　　　　┃　　┃　　　　┃　　┃　　　　　　　　┃　　┃
    echo.    ┗━━┛　　　　　　　　┗━━┛　　　　┗━━┛　　　　　　　　┗━━┛
    echo.
    echo.　　        第 1 关：横刀立马　　　　　　 　　　 　 第 2 关：插翅难飞
    echo.
    set in=&set /p in=   请选择(1,2或者回车退出):
    if not defined in exit
    if %in% lss 1 (
       goto :bgn
    ) else (
       if %in% gtr 2 (
          goto :bgn
       )
    )

    set "movie="

    call :state%in%

    call :reset%in%

    call :show

    :agn
    set input=&set /p input=请输入:
    if not defined input goto :bgn
    if /i "%input%"=="h" (
       set "movie=ok"
       call :state%in%
       call :reset%in%
       for %%a in (!state%in%!) do (
          set "input=%%a"
          call :continue
       )
    )
    rem 判断第一位是否为数字
    echo.%input:~,1%|findstr /i "[^0-9]" >nul&&(echo.输入错误...&goto :agn)
    rem 判断第一位以后的输入是否为表示方向的字母
    echo.%input:~1%|findstr /i "[^wasd]" >nul&&(echo.输入错误...&goto :agn)

    :continue
    rem 判断目的地是否为空地,如果是则移动方块
    if /i "%input:~1,1%"=="w" (
       call :w
    ) else (
       if /i "%input:~1,1%"=="a" (
          call :a
       ) else (
          if /i "%input:~1,1%"=="s" (
             call :s
          ) else (
             if /i "%input:~1,1%"=="d" call :d
          )
       )
    )
    if defined err (
       set "err="
       echo.非法位置...
       goto :agn
    )

    rem 如果多次移动一块方块,步数不累加
    if not "%block%"=="%input:~,1%" (
       set "block=%input:~,1%"
       set /a step+=1
    )

    title 华容道...%step%----%input%

    rem 判断是否已经到达目的地
    if "!down0!"=="20" (
       if "!right0!"=="12" (
          title %step%
          if not defined movie (
             echo.恭喜你,过关啦...
             echo.你一共用了%step%步...
             if "%step%"=="!least%in%!" (echo.你用的步数和我的一样少耶,知音啊...)
             set /p=请按任意键重新开始游戏...<nul
          ) else (
             set/p=演示完毕,请按任意键退回主菜单...<nul
          )
          pause>nul
          echo.
          goto :bgn
       )
    )

    rem 判断是否连续移动方块
    if not "%input:~2%"=="" (
       set "input=%input:~,1%%input:~2,1%"
       if not defined movie (ping -n 2 127.1>nul)
       goto :continue
    )
    if not defined movie (goto :agn) else (goto :eof)

    :w      //上移
    set /a point=!y%input:~,1%!-4
    for %%a in (!point!) do (
       for /l %%b in (!x%input:~,1%! 1 !right%input:~,1%!) do (
          if not "!line%%acol%%b!"=="　" (
             set err=err&goto :eof
          )
       )
    )
    rem 设置移动后的位置为空地
    set /a pos=!down%input:~,1%!-3
    for /l %%a in (!pos! 1 !down%input:~,1%!) do (
       for /l %%b in (!x%input:~,1%! 1 !right%input:~,1%!) do (
          set "line%%acol%%b=　"
      )
    )
    rem 调整方块移动后的位置
    set /a y%input:~,1%-=4,down%input:~,1%-=4
    call :setting "%input:~,1%" "!area%input:~,1%!"
    call :show
    goto :eof

    :a      //左移
    set /a point=!x%input:~,1%!-4
    for %%a in (!point!) do (
       for /l %%b in (!y%input:~,1%! 1 !down%input:~,1%!) do (
          if not "!line%%bcol%%a!"=="　" (
             set err=err&goto :eof
          )
       )
    )
    set /a pos=!right%input:~,1%!-3
    for /l %%a in (!y%input:~,1%! 1 !down%input:~,1%!) do (
       for /l %%b in (!pos! 1 !right%input:~,1%!) do (
          set "line%%acol%%b=　"
       )
    )
    set /a x%input:~,1%-=4,right%input:~,1%-=4
    call :setting "%input:~,1%" "!area%input:~,1%!"
    call :show
    goto :eof

    :s      //下移
    set /a point=!down%input:~,1%!+4
    for %%a in (!point!) do (
       for /l %%b in (!x%input:~,1%! 1 !right%input:~,1%!) do (
          if not "!line%%acol%%b!"=="　" (
             set err=err&goto :eof
          )
       )
    )
    set /a pos=!y%input:~,1%!+3
    for /l %%a in (!y%input:~,1%! 1 !pos!) do (
       for /l %%b in (!x%input:~,1%! 1 !right%input:~,1%!) do (
          set "line%%acol%%b=　"
       )
    )
    set /a y%input:~,1%+=4,down%input:~,1%+=4
    call :setting "%input:~,1%" "!area%input:~,1%!"
    call :show
    goto :eof

    :d      //右移
    set /a point=!right%input:~,1%!+4
    for %%a in (!point!) do (
       for /l %%b in (!y%input:~,1%! 1 !down%input:~,1%!) do (
          if not "!line%%bcol%%a!"=="　" (
             set err=err&goto :eof
          )
       )
    )
    set /a pos=!x%input:~,1%!+3
    for /l %%a in (!y%input:~,1%! 1 !down%input:~,1%!) do (
       for /l %%b in (!x%input:~,1%! 1 !pos!) do (
          set "line%%acol%%b=　"
       )
    )
    set /a x%input:~,1%+=4,right%input:~,1%+=4
    call :setting "%input:~,1%" "!area%input:~,1%!"
    call :show
    goto :eof

    :setting     //设置各个图形位置的函数
    set n=0
    set "str=%~2"&set "var=%~1"
    for /l %%a in (!y%var%! 1 !down%var%!) do (
       for /l %%b in (!x%var%! 1 !right%var%!) do (
          for %%i in (!n!) do (
             set "line%%acol%%b=!str:~%%i,1!"
          )
          set /a n+=1
       )
    )
    goto :eof

    :show     //显示图形的函数
    for /l %%a in (1 1 20) do (set "row%%a=")
    for /l %%a in (1 1 20) do (
       for /l %%b in (1 1 16) do (
          set "row%%a=!row%%a!!line%%acol%%b!"
       )
    )
    if defined movie (ping -n 2 127.1>nul)
    cls
    for /l %%a in (1 1 20) do echo.!row%%a!
    goto :eof

    :state1      //第一关
    set "area0=┏━━━━━━┓┃　　　　　　┃┃　　　　　　┃┃　０　曹操　┃┃　　　　　　┃┃　　　　　　┃┃　　　　　　┃┗━━━━━━┛"
    set /a x0=5,y0=1,down0=y0+7,right0=x0+7
    set "area1=┏━━━━━━┓┃　１　关羽　┃┃　　　　　　┃┗━━━━━━┛"
    set /a x1=5,y1=9,down1=y1+3,right1=x1+7
    set "area2=┏━━┓┃　　┃┃２　┃┃　　┃┃黄　┃┃忠　┃┃　　┃┗━━┛"
    set /a x2=1,y2=1,down2=y2+7,right2=x2+3
    set "area3=┏━━┓┃　　┃┃３　┃┃　　┃┃马　┃┃超　┃┃　　┃┗━━┛"
    set /a x3=13,y3=1,down3=y3+7,right3=x3+3
    set "area4=┏━━┓┃　　┃┃４　┃┃　　┃┃赵　┃┃云　┃┃　　┃┗━━┛"
    set /a x4=1,y4=9,down4=y4+7,right4=x4+3
    set "area5=┏━━┓┃　　┃┃５　┃┃　　┃┃张　┃┃飞　┃┃　　┃┗━━┛"
    set /a x5=13,y5=9,down5=y5+7,right5=x5+3
    set "area6=┏━━┓┃６兵┃┃　　┃┗━━┛"
    set /a x6=5,y6=13,down6=y6+3,right6=x6+3
    set "area7=┏━━┓┃７卒┃┃　　┃┗━━┛"
    set /a x7=9,y7=13,down7=y7+3,right7=x7+3
    set "area8=┏━━┓┃８勇┃┃　　┃┗━━┛"
    set /a x8=1,y8=17,down8=y8+3,right8=x8+3
    set "area9=┏━━┓┃９士┃┃　　┃┗━━┛"
    set /a x9=13,y9=17,down9=y9+3,right9=x9+3
    set /a step=0,block=0
    goto :eof

    :reset1      //初始化第一关各个图形的位置
    for /l %%a in (0 1 9) do (
       call :setting "%%a" "!area%%a!"
    )

    for /l %%a in (17 1 20) do (
       for /l %%b in (5 1 12) do (
          set "line%%acol%%b=　"
       )
    )
    goto :eof

    :state2      //第二关
    set "area0=┏━━━━━━┓┃　　　　　　┃┃　　　　　　┃┃　０　曹操　┃┃　　　　　　┃┃　　　　　　┃┃　　　　　　┃┗━━━━━━┛"
    set /a x0=5,y0=1,down0=y0+7,right0=x0+7
    set "area1=┏━━┓┃　　┃┃１　┃┃　　┃┃赵　┃┃云　┃┃　　┃┗━━┛"
    set /a x1=1,y1=1,down1=y1+7,right1=x1+3
    set "area2=┏━━━━━━┓┃　２　关羽　┃┃　　　　　　┃┗━━━━━━┛"
    set /a x2=1,y2=9,down2=y2+3,right2=x2+7
    set "area3=┏━━┓┃　　┃┃３　┃┃　　┃┃黄　┃┃忠　┃┃　　┃┗━━┛"
    set /a x3=1,y3=13,down3=y3+7,right3=x3+3
    set "area4=┏━━━━━━┓┃　４　张飞　┃┃　　　　　　┃┗━━━━━━┛"
    set /a x4=5,y4=13,down4=y4+3,right4=x4+7
    set "area5=┏━━┓┃　　┃┃５　┃┃　　┃┃马　┃┃超　┃┃　　┃┗━━┛"
    set /a x5=13,y5=13,down5=y5+7,right5=x5+3
    set "area6=┏━━┓┃６兵┃┃　　┃┗━━┛"
    set /a x6=13,y6=1,down6=y6+3,right6=x6+3
    set "area7=┏━━┓┃７卒┃┃　　┃┗━━┛"
    set /a x7=13,y7=5,down7=y7+3,right7=x7+3
    set "area8=┏━━┓┃８勇┃┃　　┃┗━━┛"
    set /a x8=9,y8=9,down8=y8+3,right8=x8+3
    set "area9=┏━━┓┃９士┃┃　　┃┗━━┛"
    set /a x9=13,y9=9,down9=y9+3,right9=x9+3
    set /a step=0,block=0
    goto :eof

    :reset2
    for /l %%a in (0 1 9) do (
       call :setting "%%a" "!area%%a!"
    )

    for /l %%a in (17 1 20) do (
       for /l %%b in (5 1 12) do (
          set "line%%acol%%b=　"
       )
    )
    goto :eof
