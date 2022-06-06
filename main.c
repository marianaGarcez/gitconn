

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <libpq-fe.h>


int main(int argc, char *argv[ ]){
    PGconn *conn = PQconnectdb("user=postgres");

    if (PQstatus(conn) == CONNECTION_BAD) {
        
    fprintf(stderr, "Connection to database failed: %s\n",
            PQerrorMessage(conn));
        
    }
    else {
    fprintf(stderr,"Connection to database ready\n");   
    }

    PQfinish(conn);
}