package movies.spring.data.neo4j.repositories;

import org.springframework.data.neo4j.repository.Neo4jRepository;

import movies.spring.data.neo4j.domain.Person;

public interface PersonRepository extends Neo4jRepository<Person, Long> {

	Person findByName(String name);
	
}