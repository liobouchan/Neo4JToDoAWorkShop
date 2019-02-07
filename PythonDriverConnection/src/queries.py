

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