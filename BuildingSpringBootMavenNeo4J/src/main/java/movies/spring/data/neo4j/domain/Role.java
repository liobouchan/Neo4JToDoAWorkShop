package movies.spring.data.neo4j.domain;

import java.util.ArrayList;
import java.util.List;

import org.neo4j.ogm.annotation.*;

@RelationshipEntity( type= "ACTED_IN" )
public class Role {

	@Id
	@GeneratedValue
	private Long id;
	private List<String> roles = new ArrayList<>();
	
	@StartNode
	private Person person;
	
	@EndNode
	private Movie movie;

	public Role() {
	}
	
	public Role(Movie movie , Person actor) {
		this.person = actor;
		this.movie = movie;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public List<String> getRoles() {
		return roles;
	}

	public void setRoles(List<String> roles) {
		this.roles = roles;
	}

	public Person getPerson() {
		return person;
	}

	public void setPerson(Person person) {
		this.person = person;
	}

	public Movie getMovie() {
		return movie;
	}

	public void setMovie(Movie movie) {
		this.movie = movie;
	}
	
    public void addRoleName(String name) {
        if (this.roles == null) {
            this.roles = new ArrayList<>();
        }
        this.roles.add(name);
    }
	
}
