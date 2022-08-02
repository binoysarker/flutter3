const String getProductsQueryString = """
  query GetAllProducts{
  products{
    items{
      name
      slug
    }
  }
}
  """;

const String userSignInQueryString = """
mutation SignIn(\$emailAddress: String!, \$password: String!, \$rememberMe: Boolean!) {
  login(username: \$emailAddress, password: \$password, rememberMe: \$rememberMe) {
    ... on CurrentUser {
      id
      __typename
    }
    ...ErrorResult
    __typename
  }
}
type CurrentUser {
id: ID!
identifier: String!
channels: [CurrentUserChannel!]!
}
type CurrentUserChannel {
id: ID!
token: String!
code: String!
permissions: [Permission!]!
}

fragment ErrorResult on ErrorResult {
  errorCode
  message
  __typename
}
""";