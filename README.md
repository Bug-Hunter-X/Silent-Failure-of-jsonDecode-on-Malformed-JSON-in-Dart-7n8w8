# Silent Failure of jsonDecode on Malformed JSON in Dart

This repository demonstrates a common, yet easily overlooked, error in Dart: the silent failure of `jsonDecode` when encountering malformed JSON.  The provided code attempts to parse a JSON response from an API. However, if the API returns invalid JSON, `jsonDecode` throws a `FormatException`, which is often not caught, leading to unexpected crashes.

## The Problem

The `fetchData` function uses `jsonDecode` to parse JSON data from an API response.  If the response body is not valid JSON, a `FormatException` is thrown.  However, this exception is only caught in a generic `catch (e)` block.  A more robust solution would be to explicitly catch `FormatException` and handle it appropriately.