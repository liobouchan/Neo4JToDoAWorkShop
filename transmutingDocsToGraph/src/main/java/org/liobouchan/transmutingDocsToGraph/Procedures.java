package org.liobouchan.transmutingDocsToGraph;

import java.util.stream.Stream;

import org.liobouchan.transmutingDocsToGraph.ingest.IngestDocumentCallable;
import org.liobouchan.transmutingDocsToGraph.results.GraphResult;
import org.neo4j.graphdb.GraphDatabaseService;
import org.neo4j.logging.Log;
import org.neo4j.procedure.Context;
import org.neo4j.procedure.Description;
import org.neo4j.procedure.Mode;
import org.neo4j.procedure.Name;
import org.neo4j.procedure.Procedure;

public class Procedures {

	@Context
	public GraphDatabaseService db;
	
	@Context
	public Log log;
	
	@Procedure(name = "com.liobouchan.transmutingDocsToGraph.en.ingest", mode = Mode.WRITE)
	@Description("CALL com.liobouchan.transmutingDocsToGraph.en.ingest")
	
	public Stream<GraphResult> IngestEnglishDocument(@Name("file") String file) throws InterruptedException {
		IngestDocumentCallable callable = new IngestDocumentCallable(file, "English", db, log);
		return Stream.of(callable.call());
	}
	
	@Procedure(name = "com.liobouchan.transmutingDocsToGraph.es.ingest", mode = Mode.WRITE)
	@Description("CALL com.liobouchan.transmutingDocsToGraph.es.ingest")
	
	public Stream<GraphResult> IngestSpanishDocument(@Name("file") String file) throws InterruptedException {
		IngestDocumentCallable callable = new IngestDocumentCallable(file, "Spanish", db, log);
		return Stream.of(callable.call());
	}
	
}
