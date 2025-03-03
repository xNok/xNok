---
title: "Stop Mixing Constants With the Type String in Golang"
date: 2023-06-13
draft: false
categories: ["Golang"]
tags: ["constants", "string", "untyped", "typed"]
images:
- https://prod-files-secure.s3.us-west-2.amazonaws.com/bd16a693-0437-45a1-9aec-255351a830a8/2c3f0142-a878-482d-8958-9c2e89994d47/0xwfO4pZA5hym4asU?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Content-Sha256=UNSIGNED-PAYLOAD&X-Amz-Credential=ASIAZI2LB466UETP7UI3%2F20250303%2Fus-west-2%2Fs3%2Faws4_request&X-Amz-Date=20250303T232544Z&X-Amz-Expires=3600&X-Amz-Security-Token=IQoJb3JpZ2luX2VjEKf%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEaCXVzLXdlc3QtMiJIMEYCIQCjmGpTqk7N3FjRZIY1xxsl8dhvle1L%2BBEyBNKU8MtzfAIhAPVy%2F%2BbH%2BcuijSvHqkPrF%2Fn%2BJYa9FL6sjM%2FwNIBd8XuCKogECOD%2F%2F%2F%2F%2F%2F%2F%2F%2F%2FwEQABoMNjM3NDIzMTgzODA1Igx4r6bj5ymfAcHVwRMq3AMH0MsEkjQBLLcgrBM88rGcEHssLksVA%2B%2Bu3kZM2W4HUSKI8Bqd52uNAl1J88iPCjcxMVoRAn%2FPZfm5a9rUv7%2BvtOOX176PiQQICOkfap59MG3lzVyOzx3PsxDmmp8uOFRNqH4KBOyVLpgzlfALEx2gg2Zd73kdVJFZeXG2ONtHetre4X0HubIWbZI1%2BHXbAiR6cWzUUp1QWIVwA280tYarXENpbjg7xnyXggePomJzQ5wiBUkFlZcrKQ3dE4bT3aRhuEfvuXJtVBHKuQJMCsVWBb5XHmYLv1aDSL285bknVE9FHas7PDvOj27N3bizcFnnTP2IIOM93sw2s%2FyD10DcCm5TuIcs3oDFlFQjW2%2FtI3DCX7Zf5fpNvD09D63yRH4VhNNMrg9e0hZX%2FcZR49LOYCBzn8Y%2FWO7oIdqwTHv8qjBiXXsfKG1P1%2B15HdswqVZ7nE%2FExwNpKOphD%2FDIMhqAg5UvxXY5JmPBSKYywgzBhYZUk9bOkSXjUu11bJ5orvzreqTOlgTjdpupz41NrMiZtDbXYOfPu3hbhxowa0FevoKE2QxjT0PUwlHgBE37WPSTk3aWqXqcoztvM5zxHbadunOYVTkD%2FyqvabivhZ9onqFC2s2HCAS7hjgnXzDp2Zi%2BBjqkAVib4YV1XbVOVpMdHml5NYp7qJjzS9CPW3LoLUkT6tqWy2fixh38bvJmmWOCAS9%2BBH1jUWrlegH10sJpKXJpna7OCpe0C83%2F%2BTXwiQ4oP89a6gdy3hkqrtAA045C7ugBnUhh0%2F7H1KefV452OhIQtW%2BzSuPdc61CgzMMKcH5ywIoptcnLfgmyN1Su4T1UThmueMlbkahlwelwctWmEtVbBj%2BXXoF&X-Amz-Signature=964f9af6b03cf7987a44d5a17b298f44fbd3162fd68f4d21c36c0eca8c87ac24&X-Amz-SignedHeaders=host&x-id=GetObject
---

> Original Article: [Stop Mixing Constants With the Type String in Golang](https://betterprogramming.pub/stop-mixing-constants-with-the-type-string-in-golang-d3589d8ae84d)

## Summary

In this article, Alexandre Couëdelo argues against using untyped or type **string** constants in Go. He explains that these constants can be misleading and don't provide enough information about where they should be used. Instead, he recommends creating custom types for string constants to improve usability and maintainability. You can always create a custom type for your **string** constant, gaining in usability and maintainability. Therefore in Golang, no constant should be of type string, nor untyped. While **untyped constants** make it easier to work with mixed data types and expressions.

The author suggests that you should expect to have to convert your custom type back into a string in some rare cases.

He also touches on the use of enums in Go and provides references for further learning.
