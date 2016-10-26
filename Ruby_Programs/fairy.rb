#りんごクラス。インスタンス変数@sweetnessを初期化しかえす。
class Apple
	def initialize
		@sweetness = rand(10)
	end

	def sweetness
		@sweetness
	end
end

#小人クラス。plunkメソッド内のtree.shiftメソッドは、配列treeの先頭要素を取り出す。
class Fairy
	def plunk(tree)
		tree.shift
	end

	def carry(tree,basket)
		apple = plunk.tree
end

tree = Array.new(10) {Apple.new} #Array.newは配列クラスからインスタンスを生成するメソッド。

basket = [] #空のバスケット。ここにりんごを格納する。

fairy = Fairy.new #小人クラスのインスタンス生成。
p tree.size
fairy.plunk(tree)
p tree.size