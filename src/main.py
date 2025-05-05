from src.mod import module_1


def main(a: int, b: int) -> int:
    return a + b


def hello() -> str:
    return module_1.hello()
