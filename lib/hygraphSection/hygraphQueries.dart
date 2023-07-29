class HygraphQueryService {
  static String assetQuery = """
  query Assets {
  assets {
    createdAt
    id
    publishedAt
    fileName
    url
    updatedAt
  }
}
  """;

  static String postCodesQuery = """
query Postcodes {
  postcodes {
    id
    createdAt
    postcode
  }
}
  """;
}
