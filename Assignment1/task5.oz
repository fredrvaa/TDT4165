functor 
import 
    Application(exit:Exit)
    System
define
    proc {Circle R}
        local
            Pi = 355.0/113.0
            A = Pi*R*R
            D = 2.0*R
            C = Pi*D
        in  
            {System.showInfo "Area: "#A}
            {System.showInfo "Diameter: "#D}
            {System.showInfo "Circumference: "#C}
        end
    end
    {Circle 10.0}
    {Exit 0}
end

