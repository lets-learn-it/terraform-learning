package in.avabodha.function;

import com.microsoft.azure.functions.*;
import com.microsoft.azure.functions.annotation.AuthorizationLevel;
import com.microsoft.azure.functions.annotation.FunctionName;
import com.microsoft.azure.functions.annotation.HttpTrigger;

import java.util.Optional;

public class RestFunction {

    @FunctionName("getname")
    public HttpResponseMessage getName(
            @HttpTrigger(
                    name = "getname",
                    methods = {HttpMethod.GET},
                    authLevel = AuthorizationLevel.FUNCTION
            )HttpRequestMessage<Optional<String>> request,
            final ExecutionContext context) {
        return request.createResponseBuilder(HttpStatus.OK)
                .body("Parikshit Patil")
                .build();
    }
}
