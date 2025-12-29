# PAI Claude Code Wrapper for Windows PowerShell
# Sets required environment variables before launching Claude

# Environment variables from settings.json
$PAI_DIR = "C:/Users/USERNAME/.claude"
$DA = "PAI"
$PAI_SIMPLE_COLORS = "0"
$CLAUDE_CODE_MAX_OUTPUT_TOKENS = "64000"

# Execute claude with all passed arguments
& claude @args
