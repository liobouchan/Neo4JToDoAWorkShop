package org.liobouchan.buildNeo4jTreeDecision;

import java.io.IOException;
import java.util.Map;
import java.util.stream.Stream;

import org.liobouchan.buildNeo4jTreeDecision.results.PathResult;
import org.liobouchan.buildNeo4jTreeDecision.schema.Labels;
import org.neo4j.graphdb.GraphDatabaseService;
import org.neo4j.graphdb.Node;
import org.neo4j.graphdb.traversal.Evaluator;
import org.neo4j.graphdb.traversal.TraversalDescription;
import org.neo4j.logging.Log;
import org.neo4j.procedure.Context;
import org.neo4j.procedure.Description;
import org.neo4j.procedure.Mode;
import org.neo4j.procedure.Name;
import org.neo4j.procedure.Procedure;

public class DecisionTreeTraverser {

    // This field declares that we need a GraphDatabaseService
    // as context when any procedure in this class is invoked
    @Context
    public GraphDatabaseService db;
    // This gives us a log instance that outputs messages to the
    // standard log, normally found under `data/log/console.log`
    @Context
    public Log log;

    private static final DecisionTreeEvaluator decisionTreeEvaluator = new DecisionTreeEvaluator();

    public Stream<PathResult> traverseDecisionTree(String id, Map<String, String> facts) throws IOException {
        // Which Decision Tree are we interested in?
        Node tree = db.findNode(Labels.Tree, "id", id);
        if ( tree != null) {
            // Find the paths by traversing this graph and the facts given
            return decisionPath(tree, facts);
        }
        return null;
    }

    private Stream<PathResult> decisionPath(Node tree, Map<String, String> facts) {
        TraversalDescription myTraversal = db.traversalDescription()
                .depthFirst()
                .expand(new DecisionTreeExpander(facts))
                .evaluator(decisionTreeEvaluator);

        return myTraversal.traverse(tree).stream().map(PathResult::new);
    }
}
