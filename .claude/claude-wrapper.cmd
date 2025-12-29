@echo off
REM PAI Claude Code Wrapper for Windows CMD
REM Sets required environment variables before launching Claude

set "PAI_DIR=C:/Users/USERNAME/.claude"
set "DA=PAI"
set "PAI_SIMPLE_COLORS=0"
set "CLAUDE_CODE_MAX_OUTPUT_TOKENS=64000"

claude %*
