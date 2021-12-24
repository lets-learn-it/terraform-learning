from flask import Flask
import logging
from EventhubHandler.handler import EventHubHandler
from EventhubHandler.formatter import JSONFormatter
app = Flask(__name__)

logger = logging.getLogger()

eh = EventHubHandler()
eh.setLevel(logging.DEBUG)

# format will be depends on what you choose at adx
# I am using JSON
formatter = JSONFormatter({"level": "levelname", 
                            "message": "message", 
                            "loggerName": "name", 
                            "processName": "processName",
                            "processID": "process", 
                            "threadName": "threadName", 
                            "threadID": "thread",
                            "timestamp": "asctime",
                            "exception": "exc_info",
                            "applicationName": ""})
eh.setFormatter(formatter)
logger.addHandler(eh)

ch = logging.StreamHandler()
logger.addHandler(ch)

@app.route("/")
def hello_world():
    logger.info("inside hello world")
    return "<p>Hello, World!</p>"

@app.get("/exception")
def exception():
    try:
        x = 1 / 0
    except ZeroDivisionError as e:
        logger.exception('ZeroDivisionError: {0}'.format(e))
    return "Exception Occured"

if __name__ == '__main__':
    app.run(host="0.0.0.0")