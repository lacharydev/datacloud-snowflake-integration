#!/usr/bin/env python3
"""
Export shaped dataset from Snowflake (or CSV) to Data Cloud–ready CSV.
For demo, we read local CSV to keep setup lightweight.

Usage:
  python export_to_datacloud.py --input-csv ../data/sample_customer_orders.csv --output ./out/orders_for_datacloud.csv
  # or pretend we're reading from a table and just use the local CSV for now
"""
import argparse
import os
import pandas as pd

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("--input-csv", default="../data/sample_customer_orders.csv")
    parser.add_argument("--output", default="./out/orders_for_datacloud.csv")
    args = parser.parse_args()

    os.makedirs(os.path.dirname(args.output), exist_ok=True)

    df = pd.read_csv(args.input_csv)
    # Minimal shaping: convert date, ensure numeric, select columns
    df["OrderDate"] = pd.to_datetime(df["OrderDate"]).dt.strftime("%Y-%m-%d")
    df["Amount"] = pd.to_numeric(df["Amount"], errors="coerce").fillna(0.0)

    shaped = df[["OrderId", "CustomerId", "AccountId", "OrderDate", "Amount", "Region"]].copy()
    shaped.to_csv(args.output, index=False)
    print(f"Wrote {len(shaped)} rows to {args.output}")

if __name__ == "__main__":
    main()
