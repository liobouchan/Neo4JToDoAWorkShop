//Delete all Movie and Person nodes, and their relationships
    MATCH (n) DETACH DELETE n
//Prove that the Movie Graph is gone
    MATCH (n) RETURN n
