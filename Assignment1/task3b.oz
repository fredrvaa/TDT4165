functor
import
    Application(exit:Exit)
    System
define
    X = "This is a string"
    thread {System.showInfo Y} end
    Y = X
    {Exit 0}
end

% Y can be used before assignment because all code is first compiled (which
% assigns variables), and the thread can then use Y.