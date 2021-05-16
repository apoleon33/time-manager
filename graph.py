import curses
screen = curses.initscr()
def add_chart(x,value):
	a=20
	for i in range(value-1):
		screen.addstr(a,x, "███")
		a-=1
	screen.addstr(a,x, " ")