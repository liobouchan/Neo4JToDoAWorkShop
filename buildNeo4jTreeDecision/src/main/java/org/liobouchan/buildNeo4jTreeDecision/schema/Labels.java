package org.liobouchan.buildNeo4jTreeDecision.schema;

import org.neo4j.graphdb.Label;

public enum Labels implements Label {
    Tree,
    Decision,
    Rule,
    Answer
}