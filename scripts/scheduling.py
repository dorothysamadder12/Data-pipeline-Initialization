import schedule
import time

from fetch_nse_data import fetch_data


schedule.every().day.at("16:40").do(fetch_data)

print("Scheduler started...")


while True:

    schedule.run_pending()

    time.sleep(1)