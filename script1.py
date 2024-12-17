import logging
logger = logging.getLogger(__name__)

def main():
    logging.basicConfig(filename='output.log', level=logging.INFO)
    logger.info('executado script1 :)')

if __name__ == '__main__':
    main()