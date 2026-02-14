from sentence_transformers import SentenceTransformer
from typing import List
import numpy as np



class SortSourceService:
    def __init__(self):
        self.embedding_model = SentenceTransformer("all-miniLM-L6-v2")
    def sort_result(self, query: str, search_results: List[dict]):
        try:
            embedded_query = self.embedding_model.encode(query)
            relevant_doc = []
            for result in search_results:
                embedded_content = self.embedding_model.encode(result["content"])

                ## cosine similarity
                similarity = float(
                    np.dot(embedded_query, embedded_content)
                    / (np.linalg.norm(embedded_query) * np.linalg.norm(embedded_content))
                )

                result["similarity"] = similarity

                if(similarity > 0.3):
                    relevant_doc.append(result)
            
            return sorted(
                relevant_doc, key=lambda x: x["similarity"], reverse=True
            )
        except Exception as e:
            print(e)