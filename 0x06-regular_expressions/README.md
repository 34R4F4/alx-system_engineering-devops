
# Regular expression

## RegEx

1. **Basic Syntax:**
   - `.` : Matches any single character except newline.
     - Example: `a.c` matches "abc", "axc", "a-c", etc.
     - Example: `c.t` matches "cat", "cot", "c1t", etc.
   - `^` : Matches the start of the string.
     - Example: `^start` matches "start" only if it appears at the beginning of the string.
     - Example: `^hello` matches "hello world", but not "world hello".
   - `$` : Matches the end of the string.
     - Example: `end$` matches "end" only if it appears at the end of the string.
     - Example: `world$` matches "hello world", but not "world hello".
   - `\` : Escapes special characters.
     - Example: `\.` matches a literal dot.
2. **Character Classes:**
   - `[abc]` : Matches any character inside the brackets (a, b, or c).
     - Example: `[abc]at` matches "cat", "bat", "aat", etc.
   - `[^abc]` : Matches any character not inside the brackets.
     - Example: `[^abc]at` matches "xat", "yat", "zat", etc. but not "cat", "bat", "aat".
   - `[a-z]` : Matches any character in the range a to z.
     - Example: `[a-z]` matches any lowercase letter.
   - `[0-9]` : Matches any digit.
     - Example: `[0-9]` matches any digit from 0 to 9.
   - `\d` : Matches any digit (equivalent to `[0-9]`).
     - Example: `\d{3}` matches any three digits.
   - `\w` : Matches any alphanumeric character (equivalent to `[a-zA-Z0-9_]`).
     - Example: `\w+` matches one or more alphanumeric characters.
   - `\s` : Matches any whitespace character.
     - Example: `\s+` matches one or more whitespace characters.
   - `\b` : Matches a word boundary.
     - Example: `\bword\b` matches "word" as a whole word.
   - `\B` : Matches a non-word boundary.
     - Example: `\Bcat\B` matches "cat" within words like "catalog" but not "cat".
3. **Quantifiers:**
   - `*` : Matches zero or more occurrences.
     - Example: `go*gle` matches "ggle", "gogle", "google", etc.
   - `+` : Matches one or more occurrences.
     - Example: `go+gle` matches "gogle", "google", etc. but not "ggle".
   - `?` : Matches zero or one occurrence.
     - Example: `colou?r` matches "color" or "colour".
   - `{n}` : Matches exactly n occurrences.
     - Example: `x{3}` matches "xxx".
   - `{n,}` : Matches at least n occurrences.
     - Example: `x{2,}` matches "xx", "xxx", "xxxx", etc.
   - `{n,m}` : Matches at least n and at most m occurrences.
     - Example: `x{2,4}` matches "xx", "xxx", or "xxxx".
4. **Anchors:**
   - `\b` : Word boundary.
   - `\B` : Non-word boundary.
   - `^` : Start of string.
   - `$` : End of string.
5. **Grouping and Capturing:**
   - `( )` : Groups expressions and captures matched text.
     - Example: `(\d{3})-\d{3}-\d{4}` captures the first three digits in a phone number.
   - `(?: )` : Groups expressions without capturing.
     - Example: `(?:https?|ftp)://[^/\r\n]+` matches URLs but doesn't capture the protocol.
6. **Alternation:**
   - `|` : Matches either the expression before or after it.
     - Example: `cat|dog` matches "cat" or "dog".
7. **Modifiers:**
   - `i` : Case-insensitive matching.
     - Example: `/hello/i` matches "hello", "HELLO", "Hello", etc.
   - `g` : Global search (find all matches).
     - Example: `/a/g` matches all occurrences of "a" in a string.
   - `m` : Multi-line matching.
     - Example: `/^start/m` matches "start" if it appears at the beginning of a line.
   - `s` : Allows `.` to match newline characters.
     - Example: `/pattern.*test/s` matches "pattern \n test".
   - `u` : Enables full Unicode support.
     - Example: `/[^\p{L}]/u` matches any character that is not a letter in any language.
   - `y` : Perform a "sticky" search that matches starting at the current position in the target string.
     - Example: `/\d{2}/y` matches two digits starting from the current position.
8. **Escaped Characters:**
   - `\.` : Matches a literal dot.
     - Example: `\.com` matches ".com" in a URL.
   - `\\` : Matches a literal backslash.
     - Example: `\\d` matches "\d" in a string.
9. **Assertions:**
   - `(?=...)` : Positive lookahead assertion.
     - Example: `foo(?=bar)` matches "foo" only if it's followed by "bar".
   - `(?!...)` : Negative lookahead assertion.
     - Example: `foo(?!bar)` matches "foo" only if it's not followed by "bar".
   - `(?<=...)` : Positive lookbehind assertion.
     - Example: `(?<=foo)bar` matches "bar" only if it's preceded by "foo".
   - `(?<!...)` : Negative lookbehind assertion.
     - Example: `(?<!foo)bar` matches "bar" only if it's not preceded by "foo".
10. **Greedy and Lazy Quantifiers:**
    - `*?` : Matches as few characters as possible.
      - Example: `a.*?b` matches the shortest string between "a" and "b".
    - `+?` : Matches as few characters as possible.
      - Example: `a.+?b` matches the shortest string between "a" and "b".
    - `??` : Matches as few characters as possible.
      - Example: `a.??b` matches the shortest string between "a" and "b".
    - `{n,m}?` : Matches as few characters as possible.
      - Example: `a.{2,4}?b` matches the shortest string between "a" and "b" with 2 to 4

-----

## Advanced RegEx

1. **Atomic Grouping**:
   - `(?>...)` : Atomic grouping, prevents backtracking into the group.
2. **Named Capturing Groups**:
   - `(?<name>...)` : Named capturing group.
   - `(?'name'...)` : Named capturing group (alternative syntax).
3. **Conditional Patterns**:
   - `(?(condition)true-pattern|false-pattern)` : Conditional pattern based on a named or numbered capturing group.
4. **Lookahead and Lookbehind Assertions**:
5. **Word Boundaries and Anchors**:
   - `^` : Start of string or line.
   - `$` : End of string or line.
6. **Quantifiers**:
   - `*?`, `+?`, `??`, `{n,m}?` : Lazy quantifiers (match as few characters as possible).
7. **Character Classes and Shorthand**:
   - `\D` : Matches any non-digit.
   - `\w` : Matches any word character (equivalent to `[a-zA-Z0-9_]`).
   - `\W` : Matches any non-word character.
   - `\S` : Matches any non-whitespace character.
   - `.` : Matches any character except newline.
8. **Modifiers**:
   - `g` : Global search.
   - `s` : Dotall mode (allows `.` to match newline characters).
   - `x` : Verbose mode (ignores whitespace and comments within the pattern).
   - `y` : Sticky mode (matches starting at the current position).
9. **Escape Characters**:
   - `\|` : Matches a literal pipe (|) character.
10. **Alternation**:
    - `|` : Matches either the expression before or after it.
11. **Backreferences**:
    - `\1`, `\2`, ... : Matches the same text as matched by the corresponding capturing group.
12. **Comments**:
    - `(?#...)` : Inline comment.
13. **Unicode Properties**:
    - `\p{}` : Matches any character with the specified Unicode property.
14. **Free-Spacing Mode**:
    - `(?x:...)` : Enables free-spacing mode for the enclosed pattern.
15. **Line Anchors**:
    - `\A` : Matches the start of the string.
    - `\Z` : Matches the end of the string.
    - `\z` : Matches the end of the string or just before a newline at the end of the string.
These advanced features provide greater flexibility and power when crafting complex regular expressions. Always refer to the documentation of your specific regex engine for complete details and compatibility.
