from pathlib import Path

# the following try/except block will make the custom check compatible with any Agent version
try:
    # first, try to import the base class from new versions of the Agent...
    from datadog_checks.base import AgentCheck
except ImportError:
    # ...if the above failed, the check is running in Agent version < 6.6.0
    from checks import AgentCheck

# content of the special variable __version__ will be shown in the Agent status page
__version__ = "1.0.0"

class TempCheck(AgentCheck):
    def check(self, instance):
        self.gauge(
            "custom.temperature",
            (int(Path("/sys/class/thermal/thermal_zone0/temp").read_text().strip()) / 1000),
            tags=[],
        )
