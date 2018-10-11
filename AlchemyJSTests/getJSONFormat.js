var parser = require('parse-neo4j');
var neo4j = require('neo4j-driver').v1;
var driver = neo4j.driver("bolt://localhost", neo4j.auth.basic("neo4j", "123"));
var session = driver.session();

function obtenerJson(req,res){
    var perron = '';
    let i = 0;
    var result = session         .run('MATCH (a:Movie) '+
             'WITH COLLECT({ '+
            '    caption: a.title,'+
            '    type: labels(a),'+
            '    id: id(a) '+
           '}) as nodes '+
            //'UNION '+
            'MATCH (b:Person) '+
           'WITH nodes + COLLECT({ '+
               'caption: b.name, '+
               'type: labels(b), '+
               'id: id(b) '+
            '})as Allnodes '+
            'UNWIND Allnodes as nodes '+
            'RETURN nodes'
        ).catch(function(error) {
            console.log(error);
        });


    var parsedResult = result
    .then(parser.parse)
    .then(function(parsed){
        perron += '"nodes":['
        //console.log(perron);
        
        for(var parsedRecord in parsed){
            //console.log(parsedRecord , parsed[parsedRecord]);
            perron += JSON.stringify(parsed[parsedRecord]);
            perron += ',';
        }
        // parsed.forEach(function(parsedRecord) {
        //     console.log("---> parsed: "+ parsed.length)
        //     console.log(parsedRecord);
        //     console.log(",")
        // });
        perron += "]";
        //console.log("]");
        console.log(perron)
    })
    .catch(function(parseError) {
        console.log(parseError);
    });
    // session
    //     .run('MATCH (a:Movie) '+
    //         'WITH COLLECT({ '+
    //         '    caption: a.title,'+
    //         '    type: labels(a),'+
    //         '    id: id(a) '+
    //         '}) as nodes '+
    //         //'UNION '+
    //         'MATCH (b:Person) '+
    //         'WITH nodes + COLLECT({ '+
    //             'caption: b.name, '+
    //             'type: labels(b), '+
    //             'id: id(b) '+
    //         '})as Allnodes '+
    //         'UNWIND Allnodes as nodes '+
    //         'RETURN nodes'
    //     )
    //     .subscribe({
    //         onNext: (record) => {
    //             //i = i + 1;
    //             //console.log("RECORDS: " + i + JSON.stringify(record) /*+*/ /*record.get('n.title')*/);
    //         },
    //         onCompleted: function () {
    //             session.close();
    //         },
    //         onError: function (error) {
    //             console.log(error);
    //         }
    //     });
}

function obtenerUnRecord(req,res){
     session
        .run('MATCH (a:Movie) '+
            'WITH COLLECT({ '+
            '    caption: a.title,'+
            '    type: labels(a),'+
            '    id: id(a) '+
            '}) as nodes '+
            //'UNION '+
            'MATCH (b:Person) '+
            'WITH nodes + COLLECT({ '+
                'caption: b.name, '+
                'type: labels(b), '+
                'id: id(b) '+
            '})as Allnodes '+
            'UNWIND Allnodes as nodes '+
            'RETURN nodes'
        )
        .then(function (result) {
            result.records.forEach(function (record) {
              //console.log(record);
              var parsedResult = result.records
              .then(parser.parseRecord)
              .then(function(parsed){
                  parsed.forEach(function(parsedRecord) {
                      console.log(parsedRecord);
                  });
              })
              .catch(function(parseError) {
                  console.log(parseError);
              });
            });
            session.close();
          })
          .catch(function (error) {
            console.log(error);
          });


}
module.exports= {
    obtenerJson,
    obtenerUnRecord
};