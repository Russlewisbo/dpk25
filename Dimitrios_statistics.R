library(pubmedR)
api_key <- "e822bf74df5fe5f7b44a6fb05ea7fc8baf09"
query <- "mucormycosis*[Title/Abstract] OR mucormycosis*[Title/Abstract] AND english[LA] AND Journal Article[PT] AND 1998:2023[DP]"
res <- pmQueryTotalCount(query = query, api_key = api_key)
res$total_count
M <- pmApi2df(D)
str(M)
library(bibliometrix)
M <- convert2df(D, dbsource = "pubmed", format = "api")
results <- biblioAnalysis(M)
summary(results)
