# Neo4J WorkShop by Lio Bouchan
Material extracted to give a WorkShop of Neo4j , the Objective is to create a Graph Database on Neo4j, using Neo4j tools. (Browser , Desktop).

## Getting Started
This project have only teach material to deploy some cypher query languaje of
Neo4J to learn this graph database.

This guide explains the basic concepts of Cypher, Neo4j’s query language. You should be able to read and understand Cypher queries after finishing this guide.


### Prerequisites
You should have familiarized yourself with Graph Databases and the Property Graph Model.

You have to install :

[Neo4J](https://neo4j.com/download/) - Neo4j Desktop: Developer-Friendly Packaging

## Running Cyphers
Cypher is a declarative, SQL-inspired language for describing patterns in graphs visually using an ascii-art syntax.

It allows us to state what we want to select, insert, update or delete from our graph data without requiring us to describe exactly how to do it.

Write this query on Neo4J Browser

```
//Find 10 people...
    MATCH (people:Person) RETURN people.name LIMIT 10
```
See the Magic
```
╒════════════════════╕
│"people.name"       │
╞════════════════════╡
│"Emil"              │
├────────────────────┤
│"Johan"             │
├────────────────────┤
│"Ian"               │
├────────────────────┤
│"Rik"               │
├────────────────────┤
│"Allison"           │
├────────────────────┤
│"Keanu Reeves"      │
├────────────────────┤
│"Carrie-Anne Moss"  │
├────────────────────┤
│"Laurence Fishburne"│
├────────────────────┤
│"Hugo Weaving"      │
├────────────────────┤
│"Lilly Wachowski"   │
└────────────────────┘
```