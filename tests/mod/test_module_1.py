def test_hello():
    from src.mod import module_1

    assert module_1.hello() == "Hello from module_1"
