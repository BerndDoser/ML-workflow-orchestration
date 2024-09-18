from flytekit import task, workflow

@task
def say_hello() -> str:
    return "Hello, World!"

@workflow
def wf() -> str:
    res = say_hello()
    return res

# Local execution
if __name__ == "__main__":
    print(f"Running wf() {wf()}")
