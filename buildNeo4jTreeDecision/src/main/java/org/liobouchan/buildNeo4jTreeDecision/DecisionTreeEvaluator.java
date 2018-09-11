package org.liobouchan.buildNeo4jTreeDecision;

import org.liobouchan.buildNeo4jTreeDecision.schema.Labels;
import org.neo4j.graphdb.Path;
import org.neo4j.graphdb.traversal.BranchState;
import org.neo4j.graphdb.traversal.Evaluation;

public class DecisionTreeEvaluator {
    public Evaluation evaluate(Path path, BranchState branchState) {
        // If we get to an Answer stop traversing, we found a valid path.
        if (path.endNode().hasLabel(Labels.Answer)) {
            return Evaluation.INCLUDE_AND_PRUNE;
        } else {
            // If not, continue down this path if there is anything else to find.
            return Evaluation.EXCLUDE_AND_CONTINUE;
        }
    }

    public Evaluation evaluate(Path path) {
        return null;
    }
}
