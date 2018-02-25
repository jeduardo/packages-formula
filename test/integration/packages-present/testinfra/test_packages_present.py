import pytest

@pytest.mark.parametrize("name", [
    "tmux",
    "mutt",
    "htop",
])
def test_package_is_installed(host, name):
    pkg = host.package(name)
    assert pkg.is_installed
