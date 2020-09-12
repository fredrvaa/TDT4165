functor 
import 
    Browser(browse:Browse)
    System
define
    \insert list.oz
    L1 = [0 1 2 3 4 5 6]
    L2 = [7 8 9]
    {Browse {Length L1}}    %a
    {Browse {Take L1 3}}    %b
    {Browse {Drop L1 3}}    %c  
    {Browse {Append L1 L2}} %d
    {Browse {Member L1 2}}  %e true
    {Browse {Member L1 10}} %e false
    {Browse {Position L1 2}} %e false
end

