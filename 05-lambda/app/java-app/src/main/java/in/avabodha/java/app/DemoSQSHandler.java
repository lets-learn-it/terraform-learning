package in.avabodha.java.app;

import com.amazonaws.services.lambda.runtime.Context;
import com.amazonaws.services.lambda.runtime.LambdaLogger;
import com.amazonaws.services.lambda.runtime.RequestHandler;
import com.amazonaws.services.lambda.runtime.events.SQSEvent;

public class DemoSQSHandler implements RequestHandler<SQSEvent, String> {

    @Override
    public String handleRequest(SQSEvent input, Context context) {
        LambdaLogger logger = context.getLogger();
        logger.log("uploaded to lambda");
        logger.log(input.toString());
        return null;
    }
}
