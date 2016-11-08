class Code
	attr_accessor :letter, :signal
	def initialize(letter,signal)
		@letter=letter
		@signal=signal
	end
	def to_s
		"#{@letter}-#{@signal}"
	end
end

class Node
	#include Enumerable
	
	attr_accessor :owner,:left,:right
	
	def initialize(letter,signal)
		@owner=Code.new(letter,signal)
	end
	
	def each(&block)
		left.each(&block) if left
		block.call(self)
		right.each(&block) if right
	end
	
	def translate(word)
		newWord=""
		word.split("").each{|c|newWord<<find{|n|n.owner.letter==c.upcase}.owner.signal}
		newWord.chomp
	end
	
	def to_s
		@owner.to_s
	end

end

root=Node.new("root",nil)
Empty1=Node.new(nil,nil)
Empty2=Node.new(nil,nil)
Empty3=Node.new(nil,nil)
E=Node.new("E",".")
I=Node.new("I","..")
S=Node.new("S","...")
H=Node.new("H","....")
V=Node.new("V","...-")
U=Node.new("U","..-")
F=Node.new("F","..-.")
A=Node.new("A",".-")
R=Node.new("R",".-.")
L=Node.new("L",".-..")
W=Node.new("W",".--")
P=Node.new("P",".--.")
J=Node.new("J",".---")
T=Node.new("T","-")
N=Node.new("N","-.")
M=Node.new("M","--")
G=Node.new("G","--.")
O=Node.new("O","---")
D=Node.new("D","-..")
K=Node.new("K","-.-")
B=Node.new("B","-...")
X=Node.new("X","-..-")
C=Node.new("C","-.-.")
Y=Node.new("Y","-.--")
Z=Node.new("Z","--..")
Q=Node.new("Q","--.-")

N0=Node.new("0","-----")
N1=Node.new("1",".----")
N2=Node.new("2","..---")
N3=Node.new("3","...--")
N4=Node.new("4","....-")
N5=Node.new("5",".....")
N6=Node.new("6","-....")
N7=Node.new("7","--...")
N8=Node.new("8","---..")
N9=Node.new("9","----.")

root.left=E
root.right=T
E.left=I
E.right=A
I.left=S
I.right=U
U.left=F
U.right=Empty1
Empty1.right=N2
S.left=H
H.left=N5
H.right=N4
S.right=V
V.left=N3
A.left=R
R.left=L
A.right=W
W.left=P
W.right=J
J.right=N1
T.left=N
T.right=M
N.left=D
N.right=K
D.left=B
D.right=X
B.left=N6
K.left=C
K.right=Y
M.left=G
M.right=O
G.left=Z
Z.left=N7
G.right=Q
O.left=Empty2
O.right=Empty3
Empty2.left=N8
Empty3.left=N9
Empty3.right=N0

root.each{|n|puts n.owner.letter.to_s+" "+n.owner.signal.to_s}
G.each{|n|puts n.to_s}
puts root.find{|n|n.owner.letter=="A"}.owner.signal
signs=["WeAreSinkingStop","soss","HelpUSStop"]
signs.each{|w| puts "#{w} = #{root.translate(w)}"}
