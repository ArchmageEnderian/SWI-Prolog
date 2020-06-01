open System

let rec UdalenitNuli  list1 =
    if (list1 = []) then
        []
    else
        match (List.head list1) with
            |0 -> UdalenitNuli  (List.tail list1)
            |_ -> list1

let prov x y =
    let rec delenie (x: int) (y: int) mainlist =
        let modd = x % y
        let div  = x / y
        let divlist = div :: mainlist

        if (List.length mainlist = 1000) then
            0
        else
            if (modd = 0) then
                0
            else
                let Nuli = UdalenitNuli mainlist
                match List.tryFindIndex (fun x -> x = div ) Nuli with
                    |None -> delenie (modd*10) y divlist
                    |Some value -> value + 1
    delenie x y []

let maximum x y =
    if (x > y) then
        x
    else
        y

let forOt0do1000  =
    let rec cycleFor acc y =
        if (y < 1001) then
            cycleFor (maximum (prov 1 y) acc) (y+1)
        else
            acc
    
    cycleFor 0 2

[<EntryPoint>]
let main argv =
    Console.WriteLine("Максимальный цикл: {0}", forOt0do1000 )
    0 // return an integer exit code