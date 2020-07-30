;;;;;;;;;;;;;;;;;;;;;;;;;;
;第一个功能：绑定emac-like按键至右组合键：ctrl+*
;;;;;;;;;;;;;;;;;;;;;;;;;;
>^b::Send {Left}
>!>^b::Send +{Left}

>^f::Send {Right}
>!>^f::Send +{Right}

>^w::Send {Up}
>!>^w::Send +{Up}

>^s::Send {Down}
>!>^s::Send +{Down}

>^a::Send {Home}
>!>^a::Send +{Home}

>^e::Send {End}
>!>^e::Send +{End}

>^r::Send {PgUp}
>!>^r::Send +{PgUp}

>^v::Send {PgDn}
>!>^v::Send +{PgDn}

>^x::Send ^{End}
>!>^x::Send ^+{End}

>^q::Send ^{Home}
>!>^q::Send ^+{Home}

>^d::Send {Del}

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;第二个功能：快捷键调整当前窗口到整个屏幕的左、中、右的1/3 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#+u:: 
	WinMove,A,,0,0,(A_ScreenWidth/3-25),(A_ScreenHeight-35)
	Send #+{Up}
return

#+i::
	WinMove,A,,(A_ScreenWidth/3-40),0,(A_ScreenWidth/3+100),(A_ScreenHeight-35)
	Send #+{Up}
return

#+o::
	WinMove,A,,(2*A_ScreenWidth/3+45),0,(A_ScreenWidth/3-38),(A_ScreenHeight-35)
	Send #+{Up}
return

;win+Shift+m/,/. 把当前窗口占满左中右边1/3，窗口高度为屏幕高度的1/3，窗口位置为屏幕高度的下1/3
#+m:: WinMove,A,,0,(A_ScreenHeight/2-35),(A_ScreenWidth/3),(A_ScreenHeight/2)
#+,::WinMove,A,,(A_ScreenWidth/3),(A_ScreenHeight/2-35),(A_ScreenWidth/3),(A_ScreenHeight/2)
#+.::WinMove,A,,(2*A_ScreenWidth/3),(A_ScreenHeight/2-35),(A_ScreenWidth/3),(A_ScreenHeight/2)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;第三个功能：
;1. Ctrl+Win+[]-+使当前窗口变窄宽小大百分之十 
;2. Ctrl+Win+hjkl使当前窗口向左下上右移动屏幕宽度的八分之一
;3. Ctrl+Win+a 切换当前窗口永远在最前面
;4. Ctrl+Win+4，5，6，7，8，9，0 设置当前窗口透明度40%~100%永远在最前面
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#+-::
WinGetPos, Xpos, Ypos, Width, Height, A  
WinMove, A,, Xpos+Width*0.1, Ypos+Height*0.1, Width*0.8, Height*0.8
return

#++::
WinGetPos, Xpos, Ypos, Width, Height, A  
WinMove, A,, Xpos-Width*0.1, Ypos-Height*0.1, Width*1.2, Height*1.2
return

#+;::
WinGetPos, Xpos, Ypos, Width, Height, A  
WinMove, A,, Xpos, Ypos+Height*0.1, Width, Height*0.8 
return

#+'::
WinGetPos, Xpos, Ypos, Width, Height, A  
WinMove, A,, Xpos, Ypos-Height*0.1, Width, Height*1.2 
return

#+[::
WinGetPos, Xpos, Ypos, Width, Height, A  
WinMove, A,, Xpos+Width*0.1, Ypos, Width*0.8, Height 
return

#+]::
WinGetPos, Xpos, Ypos, Width, Height, A  
WinMove, A,, Xpos-Width*0.1, Ypos, Width*1.2, Height 
return

#+h::
WinGetPos, Xpos, Ypos, , , A  
WinMove, A,, Xpos-(A_ScreenWidth/10), Ypos
return

#+l::
WinGetPos, Xpos, Ypos, , , A  
WinMove, A,, Xpos+(A_ScreenWidth/10), Ypos
return

#+j::      
WinGetPos, Xpos, Ypos, , , A  
WinMove, A,,Xpos, Ypos+(A_ScreenHeight/10)
return

#+k::      
WinGetPos, Xpos, Ypos, , , A  
WinMove, A,,Xpos, Ypos-(A_ScreenHeight/10)
return

#+n::
WinGetPos,,, Width, Height, A
WinMove, A,, A_ScreenWidth/3, A_ScreenHeight/4, A_ScreenWidth/3, A_ScreenHeight/2
return

#+a:: WinSet, AlwaysOnTop, toggle, A

#+9:: WinSet, Transparent, 250, A
#+8:: WinSet, Transparent, 245, A
#+7:: WinSet, Transparent, 235, A
#+6:: WinSet, Transparent, 210, A
#+5:: WinSet, Transparent, 175, A 
#+4:: WinSet, Transparent, 150, A
#+3:: WinSet, Transparent, 100, A
#+2:: WinSet, Transparent, 50, A
#+1:: WinSet, Transparent, 5, A
#+0:: WinSet, Transparent, 255, A
