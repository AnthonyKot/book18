import re

with open("/home/diablo/book18/chapters/06-grid-capacity-hubs.html", "r") as f:
    text = f.read()

# strip html tags roughly
text = re.sub(r'<[^>]+>', ' ', text)
sentences = re.split(r'(?<=[.!?])\s+', text.strip())
for s in sentences:
    s = s.strip()
    words = s.split()
    if len(words) > 40:
        print(f"LONG SENTENCE ({len(words)} words): {s}")

