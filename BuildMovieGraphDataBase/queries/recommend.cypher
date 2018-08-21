//Same
    MATCH (tom:Person)-[:ACTED_IN]->(movie1)<-[:ACTED_IN]-(coActor:Person),
         (coActor)-[:ACTED_IN]->(movie2)<-[:ACTED_IN]-(coCoActor:Person)
    WHERE tom.name = "Tom Hanks"
    AND   NOT    (tom)-[:ACTED_IN]->(movie2)
    RETURN coCoActor.name

//Extend Tom Hanks co-actors, to find co-co-actors who haven't worked with Tom Hanks...
    MATCH (tom:Person {name:"Tom Hanks"})-[:ACTED_IN]->(m)<-[:ACTED_IN]-(coActors),
      (coActors)-[:ACTED_IN]->(m2)<-[:ACTED_IN]-(cocoActors)
    WHERE NOT (tom)-[:ACTED_IN]->()<-[:ACTED_IN]-(cocoActors) AND tom <> cocoActors
    RETURN cocoActors.name AS Recommended, count(*) AS Strength ORDER BY Strength DESC

//People that doesnt work with Tom Hanks never
    MATCH (tom:Person)-[:ACTED_IN]->(movie1)<-[:ACTED_IN]-(coActor:Person),
            (coActor)-[:ACTED_IN]->(movie2)<-[:ACTED_IN]-(coCoActor:Person)
    WHERE tom.name = "Tom Hanks"
    AND   NOT    (tom)-[:ACTED_IN]->()<-[:ACTED_IN]-(coCoActor)
    RETURN coCoActor.name, count(distinct coCoActor) as frequency
    ORDER BY frequency DESC
    LIMIT 5

//People who connect the 2 TOMS
    MATCH (tom:Person {name:"Tom Hanks"})-[:ACTED_IN]->(m)<-[:ACTED_IN]-(coActors),
        (coActors)-[:ACTED_IN]->(m2)<-[:ACTED_IN]-(cruise:Person {name:"Tom Cruise"})
    RETURN tom, m, coActors, m2, cruise

//Shortest Path to Connect the 2 TOMS
    MATCH p=shortestPath(
        (tom:Person {name:"Tom Hanks"})-[*]-(cruise:Person {name:"Tom Cruise"})
    )
    RETURN p