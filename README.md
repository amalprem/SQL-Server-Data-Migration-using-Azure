# Azure Data Pipeline for Data Migration and Analytics

This project showcases a data pipeline implemented in Azure for migrating data from an on-premise SQL Server database to Azure cloud. The pipeline involves multiple stages, including data extraction, transformation, loading, and analytics.

**Architecture**
![image](https://github.com/amalprem/SQL-Server-Data-Migration-using-Azure/assets/37649277/257eadaf-5cd6-4e08-aee7-6c8b58cc404f)

## Overview

The primary goal of this project is to migrate data from an on-premise SQL Server database to Azure cloud and enable data analytics through Power BI dashboards. The pipeline comprises the following key stages:

1. **ADF Pipeline for Data Extraction**:
   - Azure Data Factory (ADF) is used to create a pipeline that connects to the on-premise SQL Server database.
   - Selected tables from the on-premise database are extracted and loaded into Azure Data Lake Storage Gen2 (ADLS Gen2).
   - Data is initially stored in the "Bronze" container within ADLS Gen2.

2. **Azure Databricks for Data Transformation**:
   - Azure Databricks is employed to transform the data stored in the "Bronze" container.
   - Various transformations are applied to prepare the data for analytics.
   - Transformed data is then moved to both the "Silver" and "Gold" containers within ADLS Gen2.

3. **Azure Synapse Analytics for Data Analytics**:
   - Azure Synapse Analytics is used to perform advanced analytics on the data.
   - A database is created in Azure SQL Server within Synapse Analytics.
   - Views are created in the database using an Azure Synapse Pipeline.
   - The Synapse Pipeline utilizes ADLS locations to identify table names and generate views.
   - A stored procedure is created to automate the view creation process.
   - Parameters are passed to the stored procedure through the Synapse Pipeline.

4. **Power BI for Dashboarding**:
   - Finally, the created views in Azure Synapse Analytics are connected to Power BI.
   - Power BI is used for creating dynamic and interactive dashboards to visualize and analyze the data.

## Getting Started

Follow these steps to set up and run the data pipeline:

### Prerequisites

- An Azure subscription.
- Access to an on-premise SQL Server database.
- Azure Data Factory, Azure Databricks, and Azure Synapse Analytics resources provisioned in your Azure environment.
- Power BI Desktop installed on your local machine.

