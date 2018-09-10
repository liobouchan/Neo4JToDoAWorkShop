package org.liobouchan.buildJavaConnectionWithNeo;

import org.neo4j.driver.v1.AuthTokens;
import org.neo4j.driver.v1.Driver;
import org.neo4j.driver.v1.GraphDatabase;
import org.neo4j.driver.v1.Session;
import org.neo4j.driver.v1.StatementResult;
import org.neo4j.driver.v1.Transaction;
import org.neo4j.driver.v1.TransactionWork;
import org.neo4j.driver.v1.Values;

/**
 * Hello world!
 *
 */
public class App implements AutoCloseable{
	private final Driver driver;
	
	public App( String uri, String user, String password )
	{
		driver = GraphDatabase.driver( uri, AuthTokens.basic( user, password ) );
	}

	public void close() throws Exception
	{
		driver.close();
	}

	public void printGreeting( final String message )
	{
		try
		{
			Session session = driver.session();
			String greeting = session.writeTransaction( new TransactionWork<String>()
	        {
				public String execute( Transaction tx )
	            {
					StatementResult result = tx.run( "CREATE (a:Greeting) " +
	                                                 "SET a.message = $message " +
	                                                 "RETURN a.message + ', from node ' + id(a)",
	                                                 Values.parameters( "message", message ) );
	                return result.single().get( 0 ).asString();
	            }
	        } );
	        System.out.println( greeting );
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println("Error en printGreeting " + e);
		}
	}
	public void insertMovie( )
	{
		try
		{
			Session session = driver.session();
			String greeting = session.writeTransaction( new TransactionWork<String>()
	        {
				public String execute( Transaction tx )
	            {
					StatementResult result = tx.run( "CREATE (TheMatrix:Movie {title:'The Matrix', released:1999, tagline:'Welcome to the Real World'})"
							+ "RETURN TheMatrix.title",
							Values.parameters( "message", "prueba" ));
	                return result.single().get( 0 ).asString();
	            }
	        } );
	        System.out.println( greeting );
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println("Error en movie " + e);
		}
	}
	
	public void callMaxJAR() {
		try
		{
			Session session = driver.session();
			String greeting = session.writeTransaction( new TransactionWork<String>()
	        {
				public String execute( Transaction tx )
	            {
					StatementResult result = tx.run( "CALL com.maxdemarzi.traverse.decision_tree('bar entrance', {gender:'male', age:'20'}) yield path "
							+ "RETURN last(nodes(path)).id;",
							Values.parameters( "message", "prueba" ));
	                return result.single().get( 0 ).asString();
	            }
	        } );
	        System.out.println( greeting );
		}catch (Exception e) {
			// TODO: handle exception
			System.out.println("Error en movie " + e);
		}
	}
	
	public static void main( String... args ) throws Exception
	    {
	        try
	        {
	        	App greeter = new App( "bolt://localhost:7687", "neo4j", "123" );
	            //greeter.printGreeting( "hello, world" );
	        	greeter.callMaxJAR();
	        	
	        }catch (Exception e) {
				// TODO: handle exception
				System.out.println("Error en el main " + e);
			}
	    }
}
