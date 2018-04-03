# coding: UTF-8

module Worksheet
  def test(arg1, *args, a:4, **hash, &blk)
    p arg1
    p args
    p a
    p hash
    p "block" if blk
    yield blk if blk
  end
 
  test(1, 2, 3, b:5, c:6) { p :test }
end


##########################################
if __FILE__ == $0
  def test(arg1, *args, a:4, **hash, &blk)
    p arg1
    p args
    p a
    p hash
    p "block" if blk
    yield blk if blk
  end
 
  test(1, 2, 3, b:5, c:6) { p :test }
end
##########################################
