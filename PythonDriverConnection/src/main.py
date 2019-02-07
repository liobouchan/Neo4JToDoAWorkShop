from neo4j import GraphDatabase

class HelloWorldExample(object):

    def __init__(self, uri, user, password):
        self._driver = GraphDatabase.driver(uri, auth=(user, password))

    def close(self):
        self._driver.close()

    def print_greeting(self, message):
        with self._driver.session() as session:
            greeting = session.write_transaction(self._create_and_return_greeting, message)
            print(greeting)

    def delete_allData(self):
        with self._driver.session() as session:
            result = session.write_transaction(self.detachAndDelete)
            print(result.value())

    def print_articlesNames(self):
        with self._driver.session() as session:
            names = session.write_transaction(self.get_AllArticlesNames)
            listOfNames = []
            listOfNames = names.values()
            print(listOfNames)
            for name in listOfNames:
                print(name[0])

    def print_articlesNamesAndDescriptions(self):
        with self._driver.session() as session:
            result = session.write_transaction(self.get_AllArticlesNamesAndDescriptions)
            listOfResults = result.values()
            print(listOfResults)
            for oneResult in listOfResults:
                #print(oneResult)
                print("\nNombre: " , oneResult[0])
                print("Descripcion: " , oneResult[1])
    @staticmethod
    def _create_and_return_greeting(tx, message):
        result = tx.run("CREATE (a:Greeting) "
                        "SET a.message = $message "
                        "RETURN a.message + ', from node ' + id(a)", message=message)
        return result.single()[0]

    @staticmethod
    def detachAndDelete(tx):
        result = tx.run("MATCH (N) DETACH DELETE N ")
        return result

    @staticmethod
    def get_AllArticlesNames(tx):
        result = tx.run("MATCH (N:Articulo) RETURN N.nombre")
        return result

    @staticmethod
    def get_AllArticlesNamesAndDescriptions(tx):
        result = tx.run("MATCH (N:Articulo) RETURN N.nombre , N.descripcion")
        return result

conection = HelloWorldExample("bolt://localhost:7687" , "neo4j" , "123")
conection.print_articlesNamesAndDescriptions()