//Movies and actors up to 4 "hops" away from Kevin Bacon
    MATCH (bacon:Person {name:"Kevin Bacon"})-[*1..4]-(hollywood) RETURN DISTINCT hollywood
//Bacon path, the shortest path of any relationships to Meg Ryan
    MATCH p=shortestPath(
        (bacon:Person {name:"Kevin Bacon"})-[*]-(meg:Person {name:"Meg Ryan"})
    )
    RETURN p