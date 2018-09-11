package org.liobouchan.buildNeo4jTreeDecision;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import org.neo4j.driver.v1.AuthTokens;
import org.neo4j.driver.v1.Driver;
import org.neo4j.driver.v1.GraphDatabase;

/**
 * Hello world!
 *
 */
public class App 
{
	private final Driver driver;
	
	public App( String uri, String user, String password )
	{
		driver = GraphDatabase.driver( uri, AuthTokens.basic( user, password ) );
	}

	public void close() throws Exception
	{
		driver.close();
	}
    public static void main( String[] args ) throws IOException
    {
    	App greeter = new App( "bolt://localhost:7687", "neo4j", "123" );
        System.out.println( "Hello World!" );
        DecisionTreeTraverser dtt = new DecisionTreeTraverser();
        Map<String, String> map = new HashMap<String, String>();
        map.put("gender", "male");	
        map.put("age", "20");
        System.out.println(dtt.traverseDecisionTree("bar entrance", map));
    }
}