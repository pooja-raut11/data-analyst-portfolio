import pandas as pd

# Load data
df = pd.read_csv("incident_data.csv")

# Total incidents
print("Total Incidents:", len(df))

# Average resolution time
print("Average Resolution Time:", df["ResolutionTime"].mean())

# Incidents by region
print("\nIncidents by Region:")
print(df.groupby("Region").size())

# High priority incidents
high_priority = df[df["Priority"] == "High"]
print("\nHigh Priority Incidents:", len(high_priority))

# Insight: Best performing region
print("\nAverage Resolution Time by Region:")
print(df.groupby("Region")["ResolutionTime"].mean())
