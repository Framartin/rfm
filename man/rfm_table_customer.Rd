% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rfm-table-customer.R
\name{rfm_table_customer}
\alias{rfm_table_customer}
\title{RFM table (customer data)}
\usage{
rfm_table_customer(data = NULL, customer_id = NULL, n_transactions = NULL,
  recency_days = NULL, total_revenue = NULL, analysis_date = NULL,
  recency_bins = 5, frequency_bins = 5, monetary_bins = 5, ...)
}
\arguments{
\item{data}{A \code{data.frame} or \code{tibble}.}

\item{customer_id}{Unique id of the customer.}

\item{n_transactions}{Number of transactions/orders.}

\item{recency_days}{Number of days since the last transaction.}

\item{total_revenue}{Total revenue from the customer.}

\item{analysis_date}{Date of analysis.}

\item{recency_bins}{Number of bins for recency.}

\item{frequency_bins}{Number of bins for frequency.}

\item{monetary_bins}{Number of bins for monetary.}

\item{...}{Other arguments.}
}
\value{
\code{rfm_table_customer} returns a tibble with the following columns:

\item{customer_id}{Unique id of the customer.}
\item{recency_days}{Number of days since the most recent transaction.}
\item{transaction_count}{Total number of transactions of the customer.}
\item{amount}{Revenue from the customer.}
\item{recency_score}{Recency score of the customer.}
\item{frequency_score}{Frequency score of the customer.}
\item{monetary_score}{Monetary score of the customer.}
\item{rfm_score}{RFM score of the customer.}
}
\description{
Recency, frequency, monetary and RFM score.
}
\examples{
analysis_date <- lubridate::as_date('2007-01-01', tz = 'UTC')
rfm_table_customer(rfm_data_customer, customer_id, number_of_orders,
recency_days, revenue, analysis_date)

# access rfm table
result <- rfm_table_customer(rfm_data_customer, customer_id, number_of_orders,
recency_days, revenue, analysis_date)
result$rfm

}
