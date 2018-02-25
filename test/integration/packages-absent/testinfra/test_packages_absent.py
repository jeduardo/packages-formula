import pytest

@pytest.mark.parametrize("name,sample_file", [
    ("nano", "/bin/nano")
])
def test_package_is_not_installed(host, name, sample_file):
    assert not host.exists(sample_file)
