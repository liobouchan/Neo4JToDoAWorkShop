CREATE (anexo1B:Anexo {nombre:'Anexo 1-B',
                                descripcion:'MAPEO DE CALIFICACIONES Y GRADOS DE RIESGO
                                    Tabla de Correspondencia de Calificaciones y Grados de Riesgo a Largo Plazo'
                                })

CREATE (capituloIV:Capitulo {nombre:'Capitulo IV',
                                descripcion:'Segunda Sección'
                                })

CREATE (anexo15:Anexo {nombre:'Anexo 15',
                                descripcion:'REQUISITOS MÍNIMOS PARA LA AUTORIZACIÓN DE METODOLOGÍAS INTERNAS'
                                })
CREATE (articulo2Bis72:Articulo {nombre:'Artículo 2 Bis 72',
                                descripcion:'Las Instituciones para calcular la Probabilidad de Incumplimiento, deberán
                                    sujetarse a los criterios siguientes:'
                                })
    
    CREATE (A2B72apartadoI:Apartado {nombre:'I',
                                     descripcion:'Las estimaciones de la Probabilidad de Incumplimiento deberán consistir en una media a largo
                                        plazo de las tasas de incumplimiento anuales de los acreditados incluidos en cada grado de
                                        riesgo, obtenida con observaciones que correspondan como mínimo a cinco años. La Comisión
                                        podrá autorizar el uso de periodos de información menores si la Institución puede demostrar,
                                        entre otros aspectos, que la estimación de los datos más recientes proporciona una
                                        estimación razonable y conservadora.'
    })
    CREATE (A2B72apartadoII:Apartado {nombre:'II',
                                     descripcion:' La Probabilidad de Incumplimiento será la mayor entre la Probabilidad de Incumplimiento de
                                        un año asociada con la calificación interna del deudor y 0.03 por ciento.'
    })
    CREATE (A2B72apartadoIII:Apartado {nombre:'III',
                                     descripcion:' En el caso de deudores que se encuentren en incumplimiento, se aplicará una Probabilidad de
                                        Incumplimiento de 100 por ciento. '
    })
    CREATE (A2B72apartadoIV:Apartado {nombre:'IV',
                                     descripcion:' Las Instituciones deberán incluir en sus estimaciones, un margen suficiente a fin de poder
                                        hacer frente a los errores probables en la estimación de la Probabilidad de Incumplimiento.
                                        Dicho margen deberá ser determinado por la propia Institución.
                                        '
    })
    CREATE (A2B72apartadoV:Apartado {nombre:'V',
                                     descripcion:'Las Instituciones, al calcular las Probabilidades de Incumplimiento asociadas a cada tipo de
                                        deudor, deberán cumplir con los requerimientos mínimos establecidos al efecto en la Sección
                                        IV del Anexo 15 de estas disposiciones.'
    })

        CREATE
            (articulo2Bis72)-[:TIENE_APARTADO]->(A2B72apartadoI),
            (articulo2Bis72)-[:TIENE_APARTADO]->(A2B72apartadoII),
            (articulo2Bis72)-[:TIENE_APARTADO]->(A2B72apartadoIII),
            (articulo2Bis72)-[:TIENE_APARTADO]->(A2B72apartadoIV),
            (articulo2Bis72)-[:TIENE_APARTADO]->(A2B72apartadoV),
            (A2B72apartadoV)-[:REFIERE_A {apartados:['Sección IV']}]->(anexo15)

CREATE (articulo2Bis69:Articulo {nombre:'Artículo 2 Bis 69',
                                descripcion:'Las Instituciones para calcular su requerimiento de capital por riesgo de
                                    crédito conforme a una Metodología Interna con enfoque básico o avanzado, deberán clasificar
                                    sus activos y operaciones causantes de pasivo contingente en atención a dicho riesgo, en alguno
                                    de los grupos establecidos en las fracciones I a IV de este artículo. Asimismo, aquellas operaciones
                                    para las que no se establece un tratamiento específico mediante el uso de metodologías internas,
                                    deberán referirse al numeral que les corresponda conforme a la Sección Segunda del presente
                                    capítulo, a fin de determinar el requerimiento de capital correspondiente, acorde con lo siguiente:'
                                })

CREATE (articulo2Bis88:Articulo {nombre:'Artículo 2 Bis 88',
                                descripcion:'Las Instituciones, para efectos de lo dispuesto en la presente sección,
                                    deberán sujetarse a los criterios siguientes:'
                                })

CREATE (articulo2Bis74:Articulo {nombre:'Artículo 2 Bis 74',
                                descripcion:'Las Instituciones que para obtener sus requerimientos de capital utilicen
                                    la Metodología Interna con un enfoque básico o bien, que para calificar su cartera crediticia
                                    empleen la metodología general o una Metodología Interna con un enfoque básico, podrán ajustar
                                    el valor de la Severidad de la Pérdida de sus Posiciones Preferentes considerando las garantías
                                    reales financieras que cumplan con lo establecido en el inciso a) de la fracción II del Anexo 24 y en
                                    el Artículo 2 Bis 33 de las presentes disposiciones. El ajuste a la Severidad de la Pérdida podrá
                                    SP
                                    Insurgentes Sur No. 1971, Plaza Inn, Col. Guadalupe Inn C.P. 01020, Delegación Álvaro Obregón,
                                    Ciudad de México Tel.: 5255 1454-6000 www.gob.mx/cnbv
                                    realizarse para cualquiera de los enfoques de Metodologías Internas contenidos en el presente
                                    título, cuando las garantías reales elegibles cumplan los requisitos establecidos en el citado Anexo
                                    24.'
                                })

CREATE (articulo2Bis80:Articulo {nombre:'Artículo 2 Bis 80',
                                descripcion:'- Las Instituciones que adopten una Metodología Interna con enfoque
                                    básico, deberán utilizar un Plazo Efectivo o de Vencimiento de 2.5 años para sus operaciones
                                    clasificadas en los grupos a que se refieren las fracciones I, II y III del Artículo 2 Bis 69 de las
                                    presentes disposiciones, con excepción de las operaciones de reporto y préstamo de valores, para
                                    las cuales deberán emplear un Plazo Efectivo o de Vencimiento de 6 meses.'
                                })
    CREATE (A2B80apartadoI:Apartado {nombre:'I',
                                     descripcion:'Para un instrumento sujeto a una determinada estructura de flujos de efectivo, el Plazo
                                        Efectivo o de Vencimiento se define como:
                                        Plazo Efectivo o de Vencimiento FORMULA
                                        (50) Donde CFt representa los flujos de efectivo (principal, pago de intereses y comisiones) que
                                        deberán ser pagados contractualmente en el periodo t, expresado en años'
    })
    CREATE (A2B80apartadoII:Apartado {nombre:'II',
                                     descripcion:'Tratándose de Instituciones que se encuentren imposibilitadas para calcular el Plazo Efectivo
                                        o de Vencimiento de acuerdo al método descrito en el punto anterior, podrán utilizar una
                                        medida de Plazo Efectivo o de Vencimiento más conservadora, basada en el tiempo restante
                                        máximo (en años) que puede emplear el prestatario para cancelar por completo su obligación
                                        contractual (principal, intereses y comisiones) bajo los términos del contrato del préstamo.
                                        Este periodo corresponderá al plazo de vencimiento nominal del instrumento.
                                        (50) En ningún caso el Plazo Efectivo o de Vencimiento podrá ser menor a un año o mayor a
                                        cinco años.
                                        '
    })

        CREATE
            (articulo2Bis80)-[:TIENE_APARTADO]->(A2B80apartadoI),
            (articulo2Bis80)-[:TIENE_APARTADO]->(A2B80apartadoII),
            (A2B80apartadoI)-[:REFIERE_A {fracciones:['I' , 'II' , 'III']} ]->(articulo2Bis69)

CREATE (articulo2Bis73:Articulo {nombre:'Artículo 2 Bis 73',
                                descripcion:'Las instituciones en la determinación de la severidad de la pérdida con un
                                enfoque básico y avanzado, deberán observar lo siguiente.
                                 No obstante lo previsto por los incisos a) y b) anteriores, las Instituciones deberán asignar
                                    una Severidad de la Pérdida del 100 por ciento a las Posiciones de la Cartera Crediticia
                                    Comercial con 18 o más meses de atraso en el pago del monto exigible en los términos
                                    pactados originalmente.
                                '})
    CREATE (A2B73apartadoI:Apartado {nombre:'I',
                                    descripcion:' En la Metodología Interna con un enfoque básico, deberán asignar una Severidad de la Pérdida
                                        de:'
    })
    CREATE (A2B73apartadoII:Apartado {nombre:'II',
                                    descripcion:' En la Metodología Interna con un enfoque avanzado, deberán ajustar la Severidad de la
                                        Pérdida al considerar las condiciones económicas desfavorables.
                                        Insurgentes Sur No. 1971, Plaza Inn, Col. Guadalupe Inn C.P. 01020, Delegación Álvaro Obregón,
                                        Ciudad de México Tel.: 5255 1454-6000 www.gob.mx/cnbv
                                        (130) Para cada operación a la que se refiere este apartado, la Institución deberá estimar una
                                        Severidad de la Pérdida que refleje una condición económica desfavorable ( ). La Severidad
                                        de la Pérdida no podrá ser inferior a la pérdida media a largo plazo ponderada por el número
                                        de incumplimientos, calculada a partir de la pérdida económica media de todos los
                                        incumplimientos observados dentro de la fuente de datos para dicho tipo de operación.
                                        (130) La definición de pérdida utilizada para estimar la Severidad de la Pérdida se establece en
                                        el inciso a) de la fracción II del Artículo 2 Bis 88 de estas disposiciones.
                                        (219) Los flujos usados para la estimación de la pérdida económica deben ser traídos a valor
                                        presente usando una tasa de descuento adecuada al riesgo de la exposición, de conformidad
                                        con el inciso a) del subnumeral (vii) de la Sección IV del Anexo 15 de estas disposiciones.
                                        (50) Las Instituciones, en casos en donde debido a una condición económica desfavorable se
                                        presenten variaciones cíclicas importantes en la magnitud de la pérdida, deberán incorporar dicha
                                        variación en sus estimaciones de la Severidad de la Pérdida en caso de Incumplimiento. Para ello,
                                        las Instituciones podrán utilizar valores medios de la Severidad de la Pérdida en caso de
                                        Incumplimiento observada, durante periodos de elevadas pérdidas crediticias, previsiones basadas
                                        en supuestos conservadores u otros métodos similares. Las Instituciones, durante dichos periodos,
                                        podrán adecuar las estimaciones de la Severidad de la Pérdida en caso de Incumplimiento,
                                        utilizando tanto datos internos como externos; estos últimos, siempre y cuando las Instituciones
                                        puedan demostrar la existencia de una estrecha relación entre lo siguiente:
                                        (50) a) El perfil interno de riesgo de la Institución y la composición de los datos externos;
                                        (50) b) El entorno económico y financiero del mercado donde actúa la Institución y el entorno
                                        de los datos externos; y
                                        (50) c) El sistema de calificación que da origen a los datos externos y el de la propia Institución.
                                        (219) Los sistemas que utilicen las Instituciones para determinar y validar la Severidad de la Pérdida,
                                        deberán contar con procesos metodológicos debidamente documentados, que permitan evaluar
                                        los efectos que tienen las coyunturas económicas desfavorables en las tasas de recuperación, así
                                        como para la determinación de las estimaciones de la Severidad de la Pérdida consistentes con las
                                        condiciones económicas. Este proceso deberá incluir al menos lo que se establece en el inciso b)
                                        de la fracción (vii) de la Sección IV del Anexo 15 de estas disposiciones.
                                        '
    })
    CREATE (A2B73SubApartadoA:Apartado {nombre:'a',
                                    descripcion:'45 por ciento a las Posiciones Preferentes sin garantías y en el caso de Posiciones
                                        Preferentes garantizadas, las Instituciones deberán observar lo establecido en el Artículo
                                        2 Bis 74 de las presentes disposiciones.'
    })
    CREATE (A2B73SubApartadoB:Apartado {nombre:'b',
                                    descripcion:'75 por ciento a las Posiciones Subordinadas. En el caso de créditos sindicados aquellos
                                        que para efectos de su prelación en el pago, contractualmente se encuentren
                                        subordinados respecto de otros acreedores.
                                        '
    })
        CREATE
            (articulo2Bis73)-[:TIENE_APARTADO]->(A2B73apartadoI),
            (articulo2Bis73)-[:TIENE_APARTADO]->(A2B73apartadoII),
            (A2B73apartadoI)-[:TIENE_APARTADO]->(A2B73SubApartadoA),
            (A2B73apartadoI)-[:TIENE_APARTADO]->(A2B73SubApartadoB),
            (A2B73SubApartadoA)-[:REFIERE_A]->(articulo2Bis74),
            (A2B73apartadoII)-[:REFIERE_A]->(articulo2Bis88),
            (A2B73apartadoII)-[:REFIERE_A {seccion:['4']} ]->(anexo15) 

CREATE (articulo2Bis79:Articulo {nombre:'Artículo 2 Bis 79',
                                descripcion:'Las Instituciones, tanto en el método basado en calificaciones internas
                                    básico como en el avanzado, deberán considerar a la Exposición al Incumplimiento de una partida
                                    dentro del balance como la posición esperada bruta de reservas, de la operación de crédito en caso
                                    de producirse el incumplimiento del deudor. Dicha Exposición al Incumplimiento, no podrá ser
                                    inferior a la cantidad dispuesta de la operación al momento del cálculo del requerimiento de capital.
                                    En todo caso, las reservas deberán determinarse a su vez, de conformidad con lo establecido en
                                    los Capítulos I, II y V del Título Segundo de estas disposiciones.'
                                })

    CREATE (A2B79apartadoI:Apartado {nombre:'I',
                                    descripcion:' Exposición al Incumplimiento bajo el método básico para la estimación de los factores de
                                        conversión de crédito.
                                        (50) Los factores de conversión de crédito son los mismos que se aplican en el Método Estándar
                                        señalados en el Apartado C de la Sección Segunda del presente capítulo. Lo anterior no
                                        resultará aplicable para aquellas operaciones que no estén comprometidas, que sean
                                        cancelables incondicionalmente o bien, que permitan en la práctica una cancelación
                                        automática en cualquier momento y sin previo aviso por parte de las Instituciones; lo anterior 
                                        Insurgentes Sur No. 1971, Plaza Inn, Col. Guadalupe Inn C.P. 01020, Delegación Álvaro Obregón,
                                        Ciudad de México Tel.: 5255 1454-6000 www.gob.mx/cnbv
                                        siempre y cuando dichas Instituciones demuestren que realizan un seguimiento constante de
                                        la situación financiera del prestatario y que sus Sistemas de Control Interno permiten cancelar
                                        la línea ante muestras de deterioro de la calidad crediticia del prestatario, en cuyo caso se
                                        aplicará un factor de conversión de crédito del 0 (cero) por ciento.
                                        (50) El importe al que se aplicará el factor de conversión de crédito deberá ser el menor entre el
                                        valor de la línea de crédito comprometida sin disponer y el valor que refleje cualquier posible
                                        limitación a la ejecución de dicha línea por parte del prestatario, por ejemplo, cuando exista
                                        un límite máximo al importe del préstamo potencial que esté vinculado al flujo de efectivo
                                        estimado del prestatario. Si la línea de crédito se encuentra limitada con un mecanismo de
                                        este tipo, las Instituciones deberán contar con procedimientos suficientes para dar
                                        seguimiento y gestión a dicha operación, que permitan avalar este argumento.
                                        (50) Las Instituciones, a fin de aplicar un factor de conversión de crédito del 0 (cero) por ciento
                                        para operaciones incondicionales y cancelables inmediatamente y otras líneas de crédito,
                                        deberán demostrar que tienen una vigilancia activa de la condición financiera del deudor, y que
                                        sus Sistemas de Control Interno permiten cancelar la línea ante muestras de deterioro de la
                                        calidad crediticia del prestatario. Las Instituciones que empleen el método básico, deberán
                                        utilizar el más bajo de los factores de conversión de crédito aplicables para compromisos
                                        obtenidos en otras exposiciones fuera de balance.
                                        '
    })

    CREATE (A2B79apartadoII:Apartado {nombre:'II',
                                    descripcion:'Exposición al Incumplimiento bajo el método avanzado para la estimación de factores de
                                        conversión de crédito.
                                        (219) Las Instituciones que cumplan con los requerimientos mínimos aplicables para el uso de
                                        estimaciones propias de Exposición al Incumplimiento conforme a lo establecido en el
                                        subnumeral (viii) de la Sección IV del Anexo 15 de estas disposiciones, podrán utilizar sus
                                        propias estimaciones de factores de conversión de crédito para los diferentes tipos de
                                        posiciones, siempre que estas posiciones no se refieran a operaciones cuyo valor esté
                                        determinado por el saldo neto entre flujos activos y pasivos, en cuyo caso, deberá aplicarse
                                        este último saldo.
                                        (50) Aquellas operaciones para las que no se establece un tratamiento específico en el presente
                                        artículo, deberán apegarse a lo dispuesto en el primer párrafo del Artículo 2 Bis 69 de estas
                                        disposiciones.
                                        '
    })
        CREATE
            (articulo2Bis79)-[:TIENE_APARTADO]->(A2B79apartadoI),
            (articulo2Bis79)-[:TIENE_APARTADO]->(A2B79apartadoII),
            (A2B79apartadoII)-[:REFIERE_A]->(articulo2Bis69),
            (A2B79apartadoII)-[:REFIERE_A {seccion:['4']} ]->(anexo15)

CREATE (articulo2Bis68:Articulo {nombre:'Artículo 2 Bis 68',
                                descripcion:'Las Instituciones que utilicen Metodologías Internas, para calcular sus
                                    requerimientos de capital por riesgo de crédito, ya sea con enfoque básico o avanzado, deberán
                                    considerar que el incumplimiento de un deudor se actualiza cuando se cumple al menos una de las
                                    condiciones siguientes:'
                                })
    CREATE (A2B68apartadoI:Apartado {nombre:'I',
                                    descripcion:'Cuando el deudor se encuentra en situación de mora durante 90 días naturales o más
                                        respecto a cualquier obligación crediticia importante frente a la Institución. Para tales efectos
                                        se entenderá como obligación crediticia importante aquélla que defina la propia Institución.
                                        Excepcionalmente, la Comisión podrá autorizar el uso de un plazo diferente al de 90 días
                                        naturales o más para las Operaciones Sujetas a Riesgo de Crédito con las personas a que se
                                        refiere la fracción IV del Artículo 2 Bis 69 de las presentes disposiciones cuando, a su juicio,
                                        dicha definición de incumplimiento se ajuste mejor a la Metodología Interna de que se trate.
                                        '
    })
    CREATE (A2B68apartadoII:Apartado {nombre:'II',
                                    descripcion:' Cuando sea probable que el deudor no cumpla la totalidad de sus obligaciones crediticias
                                        frente a la Institución, actualizándose tal supuesto cuando:
                                        (130) a) La Institución determine que alguno de los créditos a cargo del deudor constituye una
                                        -
                                        Criterios Contables, o bien
                                        (130) b) La Institución haya demandado el concurso mercantil del deudor o bien este último lo
                                        haya solicitado.
                                        (132) c) Derogado.
                                        (132) d) Derogado.
                                        (219) Las Instituciones deberán utilizar las definiciones e indicadores mencionados anteriormente
                                        para determinar el número de incumplimientos, así como para estimar los parámetros de riesgo,
                                        de conformidad con el subnumeral (ii) de la Sección IV del Anexo 15 de las presentes disposiciones
                                        '
    })
        CREATE
            (articulo2Bis68)-[:TIENE_APARTADO]->(A2B68apartadoI),
            (articulo2Bis68)-[:TIENE_APARTADO]->(A2B68apartadoII),
            (A2B68apartadoI)-[:REFIERE_A {fraccion:['4']} ]->(articulo2Bis69),
            (A2B68apartadoII)-[:REFIERE_A {seccion:['4']} ]->(anexo15)

CREATE (articulo2Bis21:Articulo {nombre:'Artículo 2 Bis 21',
                                descripcion:'- Los grupos IX y X se integrarán por lo siguiente:'
                                })

CREATE (articulo2Bis12:Articulo {nombre:'Artículo 2 Bis 12',
                                descripcion:'El grupo I-A estará integrado por'
                                })

CREATE (articulo2Bis18:Articulo {nombre:'Artículo 2 Bis 18',
                                descripcion:'En el grupo VII-A se clasificarán:'
                                })

    CREATE (A2B18apartadoI:Apartado {nombre:'I',
                                     descripcion:'Las Operaciones sujetas a riesgo de crédito con o a cargo de personas morales o físicas con
                                        actividad empresarial que, individualmente o en su conjunto, respecto del mismo emisor o
                                        contraparte, sean iguales o mayores al equivalente en moneda nacional a 4 millones de UDIs,
                                        y cuando sus Ingresos Netos o Ventas Netas anuales sean iguales o mayores al equivalente
                                        en moneda nacional a 14 millones de UDIs, considerando para el cálculo de la equivalencia en
                                        moneda nacional de las UDIs, el valor en pesos que el Banco de México haya publicado en el
                                        Diario Oficial de la Federación para dicha unidad en la fecha del mencionado estado financiero.
                                        (162) Sin perjuicio de lo anterior, los créditos que tengan como finalidad el desarrollo o
                                        adquisición de inmuebles comerciales y cuenten con la garantía hipotecaria de dichos
                                        inmuebles formarán parte del grupo IX señalado en el Artículo 2 Bis 21 de las presentes
                                        disposiciones.
                                        '
    })

    CREATE (A2B18apartadoII:Apartado {nombre:'II',
                                     descripcion:'Depósitos y Operaciones Sujetas a Riesgo de Crédito con o a cargo de instituciones bancarias,
                                        casas de bolsa o sus equivalentes en el extranjero.'
    })

    CREATE (A2B18apartadoIII:Apartado {nombre:'III',
                                     descripcion:'Depósitos y Operaciones Sujetas a Riesgo de Crédito con o a cargo de instituciones de
                                        seguros del exterior.
                                        '
    })

    CREATE (A2B18apartadoIV:Apartado {nombre:'IV',
                                     descripcion:'Depósitos y Operaciones Sujetas a Riesgo de Crédito con o a cargo de entidades
                                        constituidas en el exterior a las que hacen referencia los incisos a) y b) de la fracción I del
                                        artículo 2 Bis 12.a de las presentes disposiciones que sean liquidadas en cámaras de
                                        compensación que no observen lo señalado en el segundo párrafo del citado artículo.
                                        (130) No se reconocerán las garantías reales o personales de las Operaciones comprendidas en este
                                        grupo que ya hayan sido consideradas en la calificación otorgada por una Institución Calificadora.
                                        (161) Las Operaciones comprendidas en este grupo deberán ser ponderadas conforme al Grado de
                                        Riesgo a que corresponda la Calificación crediticia asignada por alguna de las Instituciones
                                        Calificadoras al emisor o contraparte de que se trate, según lo dispuesto en el Anexo 1-B de las
                                        presentes disposiciones.
                                        (162) Sin perjuicio del párrafo anterior, para efectos de ponderar las Operaciones señaladas en la
                                        fracción II del presente artículo se deberá utilizar la Calificación crediticia en escala global asignada
                                        por alguna de las Instituciones Calificadoras al gobierno central del país extranjero al cual
                                        pertenece la institución bancaria, casa de bolsa y sus equivalentes en el extranjero, con la cual se
                                        mantienen dichas operaciones.
                                        Insurgentes Sur No. 1971, Plaza Inn, Col. Guadalupe Inn C.P. 01020, Delegación Álvaro Obregón,
                                        Ciudad de México Tel.: 5255 1454-6000 www.gob.mx/cnbv
                                        (162) En caso de no existir Calificación para el emisor, contraparte o gobierno central del país
                                        extranjero de que se trate, la ponderación por riesgo de crédito será la indicada en el referido
                                        Anexo 1-B para Operaciones del Grupo VII no calificadas.
                                        (162) En ningún caso, el ponderador por riesgo que se asigne a las Operaciones no calificadas
                                        comprendidas en este grupo podrá ser inferior a la del gobierno central del país al que pertenezcan.
                                        '
    })
        CREATE
            (articulo2Bis18)-[:TIENE_APARTADO]->(A2B18apartadoI),
            (articulo2Bis18)-[:TIENE_APARTADO]->(A2B18apartadoII),
            (articulo2Bis18)-[:TIENE_APARTADO]->(A2B18apartadoIII),
            (articulo2Bis18)-[:TIENE_APARTADO]->(A2B18apartadoIV),
            (A2B18apartadoI)-[:REFIERE_A]->(articulo2Bis21),
            (A2B18apartadoIV)-[:REFIERE_A]->(articulo2Bis12),
            (articulo2Bis18)-[:REFIERE_A ]->(anexo1B)

CREATE (articulo2Bis4:Articulo {nombre:'Artículo 2 Bis 4',
                                descripcion:'El cómputo para determinar el cumplimiento de los requerimientos de
                                    capitalización se realizará considerando las Operaciones de las Instituciones en territorio nacional,
                                    así como las Operaciones de sus agencias y sucursales en el extranjero, conforme a la integración
                                    de los grupos de riesgos de mercado, de crédito y operacional que se establecen en el presente
                                    título.
                                    (50) Los requerimientos de capital por riesgos de mercado, los requerimientos de capital por riesgo
                                    de crédito, los requerimientos de capital por Riesgo Operacional, así como el Capital Neto, se
                                    determinarán con base en saldos al último día del mes.
                                    (50) Las Instituciones efectuarán dicho cómputo una vez al mes y la información relativa a éste
                                    deberán proporcionarla al Banco de México. Sin perjuicio de lo anterior, el Banco de México
                                    verificará dicho cómputo, asimismo podrá resolver que alguna Institución efectúe el cómputo para
                                    determinar el cumplimiento de los requerimientos de capitalización así como el Indice de
                                    Capitalización, con mayor periodicidad y en cualquier fecha, cuando a su juicio o al de la Comisión
                                    se estime que entre los días que van de un cómputo a otro, la Institución está asumiendo riesgos
                                    notoriamente mayores a los que muestren las cifras de cierre de mes.
                                    (50) Para los efectos del párrafo anterior, las Instituciones deberán proporcionar al Banco de México
                                    la información que sobre el particular les requiera, en la forma, que incluye formularios y ayudas
                                    operativas, y plazos establecidos por el propio Banco Central, con la previa opinión favorable de la
                                    Comisión. Dicha información, en su caso, tendrá que reportarse debidamente valuada conforme a
                                    lo establecido en el Artículo 2 Bis 2 de las presentes disposiciones.
                                    (50) El cómputo a que se refiere este artículo se efectuará en moneda nacional, de conformidad con
                                    lo siguiente:'
                                })

CREATE (articulo2Bis14:Articulo {nombre:'Artículo 2 Bis 14',
                                descripcion:'El grupo III estará integrado por:'
                                })
    CREATE (A2B14apartadoI:Apartado {nombre:'I',
                                     descripcion:'Depósitos y Operaciones Sujetas a Riesgo de Crédito con o a cargo de entidades financieras
                                        filiales de instituciones de banca múltiple o entidades financieras del grupo financiero al que
                                        pertenezca la institución de banca múltiple, incluidas las entidades financieras filiales de éstas.
                                        '
    })

    CREATE (A2B14apartadoII:Apartado {nombre:'II',
                                     descripcion:'Depósitos y Operaciones Sujetas a Riesgo de Crédito con o a cargo de instituciones de banca
                                        múltiple y de casas de bolsa, constituidas en México.
                                        '
    })

    CREATE (A2B14apartadoIII:Apartado {nombre:'III',
                                     descripcion:' Depósitos y Operaciones Sujetas a Riesgo de Crédito con o a cargo de instituciones de
                                        seguros autorizadas en México.
                                        '
    })

    CREATE (A2B14apartadoIV:Apartado {nombre:'IV',
                                     descripcion:' Las demás Operaciones autorizadas que se asimilen a este grupo conforme a lo establecido
                                        en el Artículo 2 Bis 4
                                        '
    })

    CREATE (A2B14apartadoV:Apartado {nombre:'V',
                                     descripcion:'Depósitos y Operaciones Sujetas a Riesgo de Crédito con o a cargo de entidades
                                        constituidas en México a las que hacen referencia los incisos a) y b) de la fracción I del artículo
                                        2 Bis 12.a de las presentes disposiciones que sean liquidadas en cámaras de compensación
                                        que no observen lo señalado en el segundo párrafo del citado artículo.
                                        (50) Las Operaciones con o a cargo de las personas comprendidas en este grupo deberán ser
                                        ponderadas conforme al Grado de Riesgo a que corresponda la Calificación crediticia asignada por
                                        alguna de las Instituciones Calificadoras al emisor o contraparte de que se trate, según lo dispuesto
                                        en el Anexo 1-B. En caso de no existir Calificación para el emisor o la contraparte de que se trate,
                                        la ponderación por riesgo de crédito será la indicada en el referido Anexo 1-B para Operaciones
                                        del grupo III no calificadas.
                                        (161) Asimismo, las Operaciones con o a cargo de instituciones de banca múltiple que no cuenten
                                        con al menos dos calificaciones o que estas instituciones no las revelen conforme a lo establecido
                                        en la Sección Segunda del Capítulo VII del presente título, estarán sujetas a una ponderación por
                                        riesgo de crédito de 100 por ciento.
                                        '
    })

        CREATE
            (articulo2Bis14)-[:TIENE_APARTADO]->(A2B14apartadoI),
            (articulo2Bis14)-[:TIENE_APARTADO]->(A2B14apartadoII),
            (articulo2Bis14)-[:TIENE_APARTADO]->(A2B14apartadoIII),
            (articulo2Bis14)-[:TIENE_APARTADO]->(A2B14apartadoIV),
            (articulo2Bis14)-[:TIENE_APARTADO]->(A2B14apartadoV),
            (A2B14apartadoIV)-[:REFIERE_A]->(articulo2Bis4),
            (A2B14apartadoV)-[:REFIERE_A {fraccion:['I'], inciso:['a', 'b']} ]->(articulo2Bis12),
            (articulo2Bis14)-[:REFIERE_A ]->(anexo1B),
            (articulo2Bis14)-[:REFIERE_A {seccion:['2']}]->(capituloIV)

CREATE (articulo2Bis71:Articulo {nombre:'Artículo 2 Bis 71',
                                descripcion:'Las instituciones para determinar el requerimiento de capital por riesgo de 
                                crédito con las personas a las que se refiere este subapartado, deberan sujetarse a lo siguiente.'
                                })
    CREATE (A2B71apartadoI:Apartado {nombre:'I',
                                     descripcion:'Tratándose de Operaciones Sujetas a Riesgo de Crédito sin incumplimiento, para calcular los
                                        activos ponderados por riesgo de crédito (APRC), se sujetarán a la fórmula siguiente:
                                        FORMULA (161) En donde EI, denota la Exposición al Incumplimiento, conforme a lo establecido en el
                                        Artículo 2 Bis 79 de las presentes disposiciones.
                                        (161) El ponderador del requerimiento de capital por riesgo de crédito (PRCRC) se define como:
                                        Insurgentes Sur No. 1971, Plaza Inn, Col. Guadalupe Inn C.P. 01020, Delegación Álvaro Obregón,
                                        Ciudad de México Tel.: 5255 1454-6000 www.gob.mx/cnbv
                                        (161) Probabilidad de Incumplimiento (PI): Calculada conforme a lo establecido en el Artículo 2
                                        Bis 72 de las presentes disposiciones.
                                        (161) Severidad de la Pérdida en caso de Incumplimiento ( ): i) tratándose de la Metodología
                                        Interna con enfoque básico, a la que se refiere la fracción I del Artículo 2 Bis 73 de las presentes
                                        disposiciones, y ii) en la Metodología Interna con enfoque avanzado, la que las Instituciones
                                        obtengan conforme a lo establecido en la fracción II del Artículo 2 Bis 73 de las presentes
                                        disposiciones.
                                        (161) Plazo Efectivo o de Vencimiento (V): calculado conforme a lo establecido en el Artículo 2
                                        Bis 80 de las presentes disposiciones.
                                        (161) ln denota el logaritmo natural; N(x) denota la función de distribución acumulada de una
                                        variable aleatoria normal estándar y G (z) denota la función de distribución inversa acumulada
                                        para una variable aleatoria normal estándar.'
    })
    CREATE (A2B71apartadoII:Apartado {nombre:'II',
                                     descripcion:' El ponderador del requerimiento de capital por riesgo de crédito para las posiciones que se
                                        encuentran en estado de incumplimiento conforme a lo establecido en el Artículo 2 Bis 68 de
                                        las presentes disposiciones, será de cero, toda vez que la Severidad de la Pérdida en caso de
                                        Incumplimiento será reservada en su totalidad.'
    })
    CREATE (A2B71apartadoIII:Apartado {nombre:'III',
                                     descripcion:'La Correlación (R) referida en la fracción I del presente artículo se incrementará en un 25
                                        por ciento para el caso de Operaciones Sujetas a Riesgo de Crédito con personas a las que se
                                        refiere el Artículo 2 Bis 14 y las fracciones II y III del Artículo 2 Bis 18 de las presentes
                                        disposiciones cuyo valor agregado total de sus activos, calculado en forma consolidada, sea
                                        mayor a 250 mil millones de UDIs. Asimismo, también se incrementará en un 25 por ciento la
                                        correlación tratándose de otras entidades financieras que no estén sujetas a la supervisión de
                                        la Comisión, de la Comisión Nacional del sistema de Ahorro para el Retiro o de alguna otra
                                        entidad nacional o extranjera con facultades de supervisión.'
    })

        CREATE
            (articulo2Bis71)-[:TIENE_APARTADO]->(A2B71apartadoI),
            (articulo2Bis71)-[:TIENE_APARTADO]->(A2B71apartadoII),
            (articulo2Bis71)-[:TIENE_APARTADO]->(A2B71apartadoIII),
            (A2B71apartadoI)-[:REFIERE_A]->(articulo2Bis79),
            (A2B71apartadoI)-[:REFIERE_A]->(articulo2Bis72),
            (A2B71apartadoI)-[:REFIERE_A]->(articulo2Bis73),
            (A2B71apartadoI)-[:REFIERE_A]->(articulo2Bis80),
            (A2B71apartadoII)-[:REFIERE_A]->(articulo2Bis68),
            (A2B71apartadoIII)-[:REFIERE_A]->(articulo2Bis14),
            (A2B71apartadoIII)-[:REFIERE_A]->(anexo1B),
            (A2B71apartadoIII)-[:REFIERE_A {fraccion:['I' , 'II']} ]->(articulo2Bis18)
            