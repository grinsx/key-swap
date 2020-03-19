;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;第三个功能：Ctrl+Win+[]-+使当前窗口变窄宽小大百分之十    ;;
;;Ctrl+Win+hjkl使当前窗口向左下上右移动屏幕宽度的八分之一  ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;第二个功能：快捷键调整当前窗口到整个屏幕的左、中、右的1/3 ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
#+u:: 
	WinMove,A,,0,0,(A_ScreenWidth/3-25),(A_ScreenHeigh)
	Send #+{Up}
return
;win+Shift+u，把当前窗口占满左边1/3稍窄一点，窗口高度为屏幕高度

#+i:: 
	WinMove,A,,(A_ScreenWidth/3-40),0,(A_ScreenWidth/3+100),(A_ScreenHeigh)
	Send #+{Up}
return
;win+Shift+i，把当前窗口占满中间边1/3稍宽一点，窗口高度为屏幕高度

#+o:: 
	WinMove,A,,(2*A_ScreenWidth/3+45),0,(A_ScreenWidth/3-38),(A_ScreenHeigh)
	Send #+{Up}
return
;win+Shift+o，把当前窗口占满右边1/3稍窄一点，窗口高度为屏幕高度

#+j:: WinMove,A,,0,0,(A_ScreenWidth/3),(A_ScreenHeigh)
#+k::WinMove,A,,(A_ScreenWidth/3),0,(A_ScreenWidth/3),(A_ScreenHeigh)
#+l::WinMove,A,,(2*A_ScreenWidth/3),0,(A_ScreenWidth/3),(A_ScreenHeigh)

#+m:: WinMove,A,,0,1000,(A_ScreenWidth/3),(A_ScreenHeigh)
#+,::WinMove,A,,(A_ScreenWidth/3),1000,(A_ScreenWidth/3),(A_ScreenHeigh)
#+.::WinMove,A,,(2*A_ScreenWidth/3),1000,(A_ScreenWidth/3),(A_ScreenHeigh)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;第一个功能：绑定emac-like按键至组合键：右ctrl+*         ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
RControl & b::Send {Left}
RControl & f::Send {Right}
RControl & w::Send {Up}
RControl & s::Send {Down}
RControl & d::Send {Del}
RControl & a::Send {Home}
RControl & e::Send {End}
RControl & r::Send {PgUp}
RControl & v::Send {PgDn}
RControl & x::Send {LControl down}{End down}{End up}{LControl u}
RControl & q::Send {LControl down}{Home down}{Home up}{LControl up} 
