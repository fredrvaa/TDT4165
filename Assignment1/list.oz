fun {Length List}
    case List of Head|Rest then
        1 + {Length Rest}
    else
        0
    end
end

fun {Take List Count}
    if Count == 0 then
        nil
    else
        if Count >= {Length List} then
            List
        else
            case List of Head|Rest then
                Head|{Take Rest Count-1}
            end
        end
    end
end

fun {Drop List Count}
    if Count >= {Length List} then
        nil
    else
        if Count == 0 then
            List
        else
            case List of Head|Rest then
                {Drop Rest Count-1}
            end
        end
    end
end

fun {Append List1 List2}
    if {Length List1} == 0 then
        List2
    else
        case List1 of Head|Rest then
            Head|{Append Rest List2}
        end
    end
end

fun {Member List Element}
    if {Length List} == 0 then
        false
    else
        case List of Head|Rest then
            if Head == Element then
                true
            else
                {Member Rest Element}
            end
        end
    end
end

fun {Position List Element}
    if {Length List} == 0 then
        0
    else
        case List of Head|Rest then
            if Head == Element then
                0
            else
                1 + {Position Rest Element}
            end
        end
    end
end