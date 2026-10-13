import streamlit as st
import pandas as pd
import plotly.express as px

st.set_page_config(page_title="Kenya BI Dashboard", layout="wide")

st.title("Kenya Business Intelligence Dashboard")
st.caption("KNBS Economic Survey 2026 | Moringa Capstone")

col1, col2, col3, col4 = st.columns(4)
col1.metric("GDP Growth", "5.2%", "+0.4%")
col2.metric("Inflation", "6.8%", "-0.3%")
col3.metric("Agriculture", "21.2%", "")
col4.metric("Unemployment", "12.7%", "-0.5%")

df = pd.DataFrame({
    "Year": [2020,2021,2022,2023,2024,2025],
    "GDP": [-0.3,7.5,4.8,5.6,5.0,5.2]
})
fig = px.line(df, x="Year", y="GDP", markers=True, title="GDP Growth Trend")
st.plotly_chart(fig, use_container_width=True)
