FROM freqtradeorg/freqtrade:stable
COPY user_data /freqtrade/user_data
WORKDIR /freqtrade
CMD ["trade", "--config", "/freqtrade/user_data/config.json", "--strategy", "SampleStrategy", "--db-url", "sqlite:////tmp/tradesv3.dryrun.sqlite"]


