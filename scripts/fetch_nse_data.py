import pandas as pd
import yfinance as yf
import os
import logging
from datetime import datetime


logging.basicConfig(
    filename="pipeline.log",
    level=logging.INFO,
    format="%(asctime)s - %(levelname)s - %(message)s"
)


def fetch_data():

    url = "https://archives.nseindia.com/content/equities/EQUITY_L.csv"

    df = pd.read_csv(url)

    symbols = (df["SYMBOL"].head(100) + ".NS").tolist()

    
    timestamp = datetime.now().strftime("%Y-%m-%d_%H-%M-%S")

    
    folder_name = os.path.join("data", timestamp)

    
    os.makedirs(folder_name, exist_ok=True)

    for symbol in symbols:

        try:

            logging.info(f"Downloading {symbol}")

            stock_data = yf.download(
                symbol,
                period="1y",
                interval="1d",
                auto_adjust=True
            )

            
            file_path = os.path.join(folder_name, f"{symbol}.csv")

            stock_data.to_csv(file_path)

            logging.info(f"Saved: {file_path}")

        except Exception as e:

            logging.error(f"Failed downloading {symbol}: {e}")

    logging.info("All individual CSV files downloaded successfully.")