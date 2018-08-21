//Movies and actors up to 4 "hops" away from Kevin Bacon
    MATCH (bacon:Person {name:"Kevin Bacon"})-[*..4]-(hollywood) RETURN DISTINCT hollywood
    MATCH (bacon:Person {name:"Kevin Bacon"})-[*1..4]-(hollywood) RETURN DISTINCT hollywood
//Bacon path, the shortest path of any relationships to Meg Ryan
    MATCH p=shortestPath(
        (bacon:Person {name:"Kevin Bacon"})-[*]-(meg:Person {name:"Meg Ryan"})
    )
    RETURN p

//EXTRA DATA EDUCATIONAL PROPOSES
//Explaining Hopes
    //we want to retrieve friends of friends that our user doesn’t know yet, we can simply 
    MATCH (user:User{ name: 'goku'}) - [:KNOWS] -> (friend) - [:KNOWS] -> (friendOfFriend)
    WHERE NOT((user)-[:KNOWS]->(friendOfFriend))
    RETURN user, friendOfFriend

    //This will work without any problem, but we can simplify the query by introducing a “relationship length” (or “path length”):
    MATCH (user:User {name:'goku'})-[:KNOWS*2]->(friendOfFriend)
    WHERE NOT((user)-[:KNOWS]->(friendOfFriend))
    RETURN user, friendOfFriend