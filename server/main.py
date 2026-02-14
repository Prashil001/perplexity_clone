from fastapi import FastAPI
from pydantic_model.chat_body import ChatBody
from services.search_service import SearchService
from services.sort_source_service import SortSourceService
from services.llm_service import LLMService

app = FastAPI()
search_service = SearchService()
sort_source_service = SortSourceService()
llmService = LLMService()

@app.post("/chat")
def chat(body: ChatBody):
    search_results = search_service.web_search(body.query)
    sorted_results = sort_source_service.sort_result(body.query,search_results)

    response = llmService.generate_response(body.query,sorted_results)

    return response
